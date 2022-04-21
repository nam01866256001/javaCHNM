package trasua.Controller.User;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import trasua.Entity.giohang;
import trasua.Entity.hoadon;
import trasua.Entity.taikhoan;
import trasua.Service.User.HomeServiceImpl;
import trasua.Service.User.giohangServiceImpl;
import trasua.Service.User.hoadonServiceImpl;
import trasua.Service.User.sanphamServiceImpl;

@Controller
public class giohangController extends BaseController {

	@Autowired
	private giohangServiceImpl cartservice = new giohangServiceImpl();
	@Autowired
	HomeServiceImpl homeService = new HomeServiceImpl();
	@Autowired
	sanphamServiceImpl SanphamService;
	@Autowired
	hoadonServiceImpl hoadonService;

	@RequestMapping(value = "/cart")
	public ModelAndView Index() {
		ModelAndView mv = new ModelAndView("user/cart");
		mv.addObject("sanpham", homeService.GetDataSlide());
		mv.addObject("loaisanpham", homeService.GetDataloaiSP());
		return mv;
	}

	@RequestMapping(value = "addCart/{id}")
	public String addCart(HttpServletRequest request, HttpSession session, @PathVariable long id) {
		_mvShare.addObject("sanpham", homeService.GetDataSlide());
		_mvShare.addObject("sanpham", SanphamService.GetProductByID(id));
		HashMap<Long, giohang> cart = (HashMap<Long, giohang>) session.getAttribute("giohang");
		if (cart == null) {
			cart = new HashMap<Long, giohang>();
		}
		cart = cartservice.addCart(id, cart);
		session.setAttribute("giohang", cart);
		session.setAttribute("TotalQuantyCart", cartservice.TotalQuanty(cart));
		session.setAttribute("TotalPriceCart", cartservice.TotalPrice(cart));
		return "redirect:" + request.getHeader("Referer");
	}

	@RequestMapping(value = "editCart/{id}/{quanty}")
	public String editCart(HttpServletRequest request, HttpSession session, @PathVariable long id,
			@PathVariable int quanty) {
		_mvShare.addObject("sanpham", homeService.GetDataSlide());
		_mvShare.addObject("sanpham", SanphamService.GetProductByID(id));
		HashMap<Long, giohang> cart = (HashMap<Long, giohang>) session.getAttribute("giohang");
		if (cart == null) {
			cart = new HashMap<Long, giohang>();

		}
		cart = cartservice.editCart(id, quanty, cart);
		session.setAttribute("giohang", cart);
		session.setAttribute("TotalQuantyCart", cartservice.TotalQuanty(cart));
		session.setAttribute("TotalPriceCart", cartservice.TotalPrice(cart));
		return "redirect:" + request.getHeader("Referer");
	}

	@RequestMapping(value = "deleteCart/{id}")
	public String deleteCart(HttpServletRequest request, HttpSession session, @PathVariable long id) {
		_mvShare.addObject("sanpham", homeService.GetDataSlide());
		_mvShare.addObject("sanpham", SanphamService.GetProductByID(id));
		HashMap<Long, giohang> cart = (HashMap<Long, giohang>) session.getAttribute("giohang");
		if (cart == null) {
			cart = new HashMap<Long, giohang>();

		}
		cart = cartservice.deleteCart(id, cart);
		session.setAttribute("giohang", cart);
		session.setAttribute("TotalQuantyCart", cartservice.TotalQuanty(cart));
		session.setAttribute("TotalPriceCart", cartservice.TotalPrice(cart));
		return "redirect:" + request.getHeader("Referer");
	}

	@RequestMapping(value = "/checkout", method = RequestMethod.GET)
	public ModelAndView Checkout(HttpServletRequest request, HttpSession session) {
		_mvShare.setViewName("user/checkout");
		hoadon bill = new hoadon();
		taikhoan loginInfo = (taikhoan) session.getAttribute("LoginInfor");
		HashMap<Long, giohang> cart = (HashMap<Long, giohang>) session.getAttribute("giohang");
		if (loginInfo != null) {
			if(cart != null) {
				bill.setDiaChi(loginInfo.getDiaChi());
				bill.setSdt(loginInfo.getSdt());
				bill.setEmail(loginInfo.getEmail());
				bill.setTongTien((Double) session.getAttribute("TotalPriceCart")); 
				_mvShare.addObject("nameCustomer",loginInfo.getTenNguoiDung());
				_mvShare.addObject("bill", bill);
				return _mvShare;
			} else {
				_mvShare.setViewName("redirect:/menu");
				return _mvShare;
			}
			
		} else {
			
			_mvShare.setViewName("redirect:/login");
			return _mvShare;
		}

	}

	@RequestMapping(value = "/checkout", method = RequestMethod.POST)
	public ModelAndView CheckoutBill(HttpServletRequest request, HttpSession session, @ModelAttribute("bill") hoadon bills) {
		/* try { */
			int check = hoadonService.addhoadon(bills);
			if (check > 0) {
				HashMap<Long, giohang> giohang = (HashMap<Long, giohang>) session.getAttribute("giohang");
				hoadonService.addcthd(giohang);
				
			}
			session.removeAttribute("giohang");
			session.removeAttribute("TotalPriceCart");
			session.removeAttribute("TotalQuantyCart");
			_mvShare.setViewName("redirect:/success");
			return _mvShare;
			/*
			 * } catch (Exception e) {
			 * 
			 * _mvShare.addObject("status","Số lượng mua lớn hơn trong kho!");
			 * _mvShare.setViewName("user/cart"); return _mvShare; }
			 */
		

	}
	
	@RequestMapping(value = "/success")
	public ModelAndView SuccessOrder() {
		_mvShare.setViewName("user/successOrder");
		return _mvShare;
	}
}
