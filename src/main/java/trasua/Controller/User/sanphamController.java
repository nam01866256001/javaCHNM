package trasua.Controller.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import trasua.Service.User.HomeServiceImpl;
import trasua.Service.User.sanphamServiceImpl;



@Controller
public class sanphamController extends BaseController {
	@Autowired
	HomeServiceImpl homeService= new HomeServiceImpl();
	@Autowired
	sanphamServiceImpl SanphamService;
	
	@RequestMapping(value = "/chi-tiet-sp/{id}")
	public ModelAndView Index(@PathVariable int id){
		_mvShare.addObject("sanpham", homeService.GetDataSlide());
		_mvShare.addObject("loaisanpham", homeService.GetDataloaiSP());
		_mvShare.addObject("sanpham", SanphamService.GetProductByID(id));
	    _mvShare.setViewName("user/ProductDetail");
	    return _mvShare;
	}
}