package trasua.Service.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import trasua.Dao.Admin.ProductDao;
import trasua.Entity.sanpham;

@Service
public class HomeAdminServiceImpl implements IHomeAdminService{
	@Autowired
	ProductDao themsanpham;
	
	public int insert(sanpham sp) {
		// TODO Auto-generated method stub
		return themsanpham.insert(sp);
	}
	public void delete(int id) {
		themsanpham.delete(id);
	}
	public void edit(sanpham sp, long idProduct) {
		themsanpham.edit(sp, idProduct);
		
	}
}
