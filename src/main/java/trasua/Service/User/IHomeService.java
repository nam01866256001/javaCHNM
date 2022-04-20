package trasua.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import trasua.Entity.loaisanpham;
import trasua.Entity.sanpham;

@Service
public interface IHomeService {
	@Autowired
	public List<sanpham> GetDataSlide();
	
	public List<loaisanpham> GetDataloaiSP();	
	
	
	
}
