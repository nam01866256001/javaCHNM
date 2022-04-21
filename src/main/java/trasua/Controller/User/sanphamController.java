package trasua.Controller.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import trasua.Entity.Paginates;
import trasua.Service.User.HomeServiceImpl;
import trasua.Service.User.PaginatesServiceImpl;
import trasua.Service.User.sanphamServiceImpl;



@Controller
public class sanphamController extends BaseController {
	@Autowired
	HomeServiceImpl homeService= new HomeServiceImpl();
	@Autowired
	sanphamServiceImpl SanphamService;
	@Autowired
	private PaginatesServiceImpl PaginatesService;
	int totalProductsOfPage = 6;
	
	@RequestMapping(value = "/ProductDetail/{id}") 
	public ModelAndView ProductDetail(@PathVariable int id){
	 _mvShare.setViewName("user/ProductDetail");
	 _mvShare.addObject("sanpham",SanphamService.GetProductByID(id)); 
	 return _mvShare;
	 }
	
	// show products in each page
		@RequestMapping(value = "/menu/page={currentPage}")
		public ModelAndView ProductInEachPage(@PathVariable int currentPage) {
			_mvShare.setViewName("user/menu");
			_mvShare.addObject("loaisanpham", homeService.GetDataloaiSP());
			int totalData = homeService.GetDataSlide().size();
			Paginates paginateInfo = PaginatesService.GetInfoPaginates(totalData, totalProductsOfPage, currentPage);
			_mvShare.addObject("paginateInfo", paginateInfo);
			_mvShare.addObject("ProductsPaginate",SanphamService.GetDataProductsPaginate(paginateInfo.getStart(), totalProductsOfPage));

			return _mvShare;

		}
		@RequestMapping(value = "/SPcategory/{id}")
		public ModelAndView productOfEachCategory(@PathVariable long id) {
			_mvShare.setViewName("user/SPcategory");
			_mvShare.addObject("loaisanpham", homeService.GetDataloaiSP());
			 _mvShare.addObject("sanpham1",SanphamService.GetProductByc(id));
			return _mvShare;

		}
		@RequestMapping(value = "/Product6new")
		public ModelAndView Product6new1() {
			_mvShare.setViewName("user/Product6new");
			_mvShare.addObject("sanpham",SanphamService.GetProduct6new());
			return _mvShare;

		}
}