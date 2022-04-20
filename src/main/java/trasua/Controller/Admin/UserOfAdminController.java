package trasua.Controller.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import trasua.Service.Admin.AccServiceImpl;

@Controller
public class UserOfAdminController extends BaseAdminController {
	@Autowired
	AccServiceImpl accService= new AccServiceImpl();
	
	@RequestMapping(value="/admin/taikhoan-user")
	public ModelAndView listAccUser() {
		_mvaShare.setViewName("admin/AccountUser");
		_mvaShare.addObject("taikhoan", accService.GetDataAcc());
		return _mvaShare;
	}
	
	@RequestMapping(value="/admin/taikhoan-admin")
	public ModelAndView listAccAdmin() {
		_mvaShare.setViewName("admin/AccountAdmin");
		_mvaShare.addObject("taikhoan", accService.GetDataAccAdmin());
		return _mvaShare;
	}
	
}
