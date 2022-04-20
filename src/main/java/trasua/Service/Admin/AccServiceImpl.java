package trasua.Service.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import trasua.Dao.Admin.AccountDao;
import trasua.Entity.taikhoan;
@Service
public class AccServiceImpl implements IAccService{
	@Autowired 
	AccountDao taikhoan;
	@Override
	public List<taikhoan> GetDataAcc() {
		return taikhoan.GetDataAcc();
	}
	public List<taikhoan> GetDataAccAdmin() {
		return taikhoan.GetDataAccAdmin();
	}
	

}
