package trasua.Service.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import trasua.Entity.taikhoan;

@Service
public interface IAccService {
	@Autowired
	public List<taikhoan> GetDataAcc();
	public List<taikhoan> GetDataAccAdmin();
}
