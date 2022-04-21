package trasua.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import trasua.Entity.sanpham;



@Service
public interface IsanphamService {
	@Autowired 
	public sanpham GetProductByID(long id);
	public List<sanpham> GetProductByc(long id);
	public List<sanpham> GetProduct6new();
	public List<sanpham> GetDataProductsPaginate(int start, int totalPage);

}
