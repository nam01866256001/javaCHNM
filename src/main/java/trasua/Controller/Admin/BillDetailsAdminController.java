package trasua.Controller.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import trasua.Service.Admin.BillDetailsServiceImpl;

@Controller
public class BillDetailsAdminController {
	@Autowired
	BillDetailsServiceImpl bill = new BillDetailsServiceImpl();
	@RequestMapping(value = {"/admin/chitiethoadon"})
	public ModelAndView hoadon() {
		ModelAndView mv = new ModelAndView("admin/BillDetails");
		mv.addObject("cthd", bill.GetDataCTHD());
		return mv;
	}
}
