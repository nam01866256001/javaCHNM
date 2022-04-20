package trasua.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import trasua.Entity.loaisanpham;
import trasua.Entity.taikhoan;

@Service
public interface IAccountService {
	@Autowired
	public int AddAccount (taikhoan user);
	public taikhoan CheckAccount(taikhoan user);

}
