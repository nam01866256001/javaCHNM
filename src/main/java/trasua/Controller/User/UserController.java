package trasua.Controller.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import trasua.Entity.giohang;
import trasua.Entity.taikhoan;
import trasua.Service.User.AccountServiceImpl;

@Controller
public class UserController extends BaseController {
	@Autowired
	AccountServiceImpl accountService = new AccountServiceImpl();
	@RequestMapping(value = "register", method = RequestMethod.GET)
	public ModelAndView Register() {
		_mvShare.setViewName("user/Register");
		_mvShare.addObject("user", new taikhoan());
		
		return _mvShare;
	}
	@RequestMapping(value = "register", method = RequestMethod.POST)
	public ModelAndView CreateAccount(HttpSession session,@ModelAttribute("user") taikhoan user) throws Exception{
		int count = accountService.AddAccount(user);
		if (count != 0) {

			_mvShare.addObject("StatusRegister", "Đăng ký tài khoản thành công!");
			_mvShare.setViewName("user/index");
		
			session.setAttribute("LoginInfor", user);
		} else {
			_mvShare.addObject("StatusRegister", "Đăng ký tài khoản không thành công!");
			_mvShare.setViewName("redirect:/user/Register");
		}	
		
		return _mvShare;
	}
	
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public ModelAndView viewLogin() {
		_mvShare.setViewName("user/Login");
		_mvShare.addObject("user", new taikhoan());
		return _mvShare;
	}

	@RequestMapping(value = "login", method = RequestMethod.POST)
	public ModelAndView Login(HttpSession session, @ModelAttribute("user") taikhoan user) {
		user = accountService.CheckAccount(user);
		if (user != null) {
			_mvShare.setViewName("user/index");
			 session.setAttribute("LoginInfor", user);
			 _mvShare.addObject("Statuslogin", "Đăng nhập thành công!");
			
		} else if(user == null) {
			_mvShare.addObject("Statuslogin", "Đăng nhập không thành công!");
			_mvShare.setViewName("user/Login");
			
		}

		return _mvShare;
	}

	
	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String Login(HttpSession session, HttpServletRequest request) {
		session.removeAttribute("LoginInfor");
		 _mvShare.addObject("Statuslogin", "");
		return "redirect:/trang-chu";
	}
}
