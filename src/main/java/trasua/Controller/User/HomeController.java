package trasua.Controller.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import trasua.Entity.Paginates;
import trasua.Service.User.HomeServiceImpl;
import trasua.Service.User.PaginatesServiceImpl;
import trasua.Service.User.sanphamServiceImpl;

@Controller
@Service
public class HomeController {
	@Autowired
	HomeServiceImpl homeService= new HomeServiceImpl();
	@Autowired
	sanphamServiceImpl SanphamService= new sanphamServiceImpl();
	@Autowired
	private PaginatesServiceImpl PaginatesService;
	int totalProductsOfPage = 6;
//	HomeServiceImpl homeService= new HomeServiceImpl();	
	
	@RequestMapping(value = { "/", "/trang-chu" })
	public ModelAndView Index() {
		ModelAndView mv = new ModelAndView("user/index");
		int totalData = homeService.GetDataSlide().size();
		Paginates paginateInfo = PaginatesService.GetInfoPaginates(totalData, totalProductsOfPage, 1);
		mv.addObject("paginateInfo", paginateInfo);
		mv.addObject("loaisanpham", homeService.GetDataloaiSP());
		mv.addObject("ProductsPaginate",SanphamService.GetDataProductsPaginate(paginateInfo.getStart(), totalProductsOfPage));
		return mv;
	}

	@RequestMapping(value = "/menu")
	public ModelAndView Product() {
		ModelAndView mv = new ModelAndView("user/menu");
		int totalData = homeService.GetDataSlide().size();
		Paginates paginateInfo = PaginatesService.GetInfoPaginates(totalData, totalProductsOfPage, 1);
		mv.addObject("paginateInfo", paginateInfo);
		mv.addObject("loaisanpham", homeService.GetDataloaiSP());
		mv.addObject("ProductsPaginate",SanphamService.GetDataProductsPaginate(paginateInfo.getStart(), totalProductsOfPage));
		return mv;

	}
	@RequestMapping(value = "/menuindex")
	public ModelAndView Productindex() {
		ModelAndView mv = new ModelAndView("user/menuindex");
		int totalData = homeService.GetDataSlide().size();
		Paginates paginateInfo = PaginatesService.GetInfoPaginates(totalData, totalProductsOfPage, 1);
		mv.addObject("paginateInfo", paginateInfo);
		mv.addObject("loaisanpham", homeService.GetDataloaiSP());
		mv.addObject("ProductsPaginate",SanphamService.GetDataProductsPaginate(paginateInfo.getStart(), totalProductsOfPage));
		return mv;

	}
	
	
	
	

}
