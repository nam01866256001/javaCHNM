package trasua.Service.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import trasua.Entity.loaisanpham;
import trasua.Entity.sanpham;

@Service
public interface IHomeAdminService {
	@Autowired
	public int insert(sanpham sp);
	public void delete(int id);
	public void edit(sanpham sp, long idProduct);
	
}
