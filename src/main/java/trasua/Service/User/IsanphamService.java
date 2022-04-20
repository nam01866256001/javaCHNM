package trasua.Service.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import trasua.Entity.sanpham;



@Service
public interface IsanphamService {
	@Autowired 
	public sanpham GetProductByID(long id);

}
