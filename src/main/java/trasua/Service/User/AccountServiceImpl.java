package trasua.Service.User;


import java.util.List;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import trasua.Dao.HomeDao;
import trasua.Dao.UserDao;

import trasua.Entity.sanpham;
import trasua.Entity.taikhoan;
@Service
public class AccountServiceImpl  implements IAccountService{
	@Autowired
	 UserDao userDao = new UserDao();

	public int AddAccount(taikhoan user)  {
		user.setMatKhau(BCrypt.hashpw(user.getMatKhau(), BCrypt.gensalt(12)));
		return userDao.AddAccount(user);

	}
	public taikhoan CheckAccount(taikhoan user) {
		String pass = user.getMatKhau();
		user = userDao.GetAccount(user);
		if(user != null ) {
			if(BCrypt.checkpw(pass, user.getMatKhau())) {
				return user;
			}
			else {
				return null;
			}	
		}
		return null;
	}

	public taikhoan CheckAccountAdmin(taikhoan user) {
		String pass = user.getMatKhau();
		user = userDao.GetAccountAdmin(user);
		if(user != null ) {
			if(BCrypt.checkpw(pass, user.getMatKhau())) {
				return user;
			}
			else {
				return null;
			}	
		}
		return null;
	}

}
