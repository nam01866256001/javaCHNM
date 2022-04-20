package trasua.Controller.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import trasua.Service.Admin.BillServiceImpl;

@Controller
public class BillAdminController {
	@Autowired
	BillServiceImpl bill = new BillServiceImpl();
	@RequestMapping(value = {"/admin/hoadon"})
	public ModelAndView hoadon() {
		ModelAndView mv = new ModelAndView("admin/BillAdmin");
		mv.addObject("hoadon", bill.GetDataHD());
		return mv;
	}
}
