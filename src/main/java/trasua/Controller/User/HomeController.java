package trasua.Controller.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import trasua.Service.User.HomeServiceImpl;
import trasua.Service.User.sanphamServiceImpl;

@Controller
@Service
public class HomeController {
	@Autowired
	HomeServiceImpl homeService= new HomeServiceImpl();
	@Autowired
	sanphamServiceImpl SanphamService= new sanphamServiceImpl();
	
//	HomeServiceImpl homeService= new HomeServiceImpl();	
	
	@RequestMapping(value = { "/", "/trang-chu" })
	public ModelAndView Index() {
		ModelAndView mv = new ModelAndView("user/index");
		mv.addObject("sanpham", homeService.GetDataSlide());		
		return mv;
	}
	@RequestMapping(value = {"/menu" })
	public ModelAndView Menu() {
		ModelAndView mv = new ModelAndView("user/menu");
		mv.addObject("sanpham", homeService.GetDataSlide());
		mv.addObject("loaisanpham", homeService.GetDataloaiSP());
		return mv;
	}

}
