package trasua.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import trasua.Dao.sanphamDao;
import trasua.Entity.sanpham;

@Service
public class sanphamServiceImpl implements IsanphamService{
	@Autowired 
	sanphamDao sanphamDao = new sanphamDao();
	
	public sanpham GetProductByID(long id) {
		 List<sanpham> list= sanphamDao.GetProductByID(id);
	    return list.get(0);
	}
	public List<sanpham> GetProductByc(long id) {
		 List<sanpham> list= sanphamDao.GetProductByc(id);
	    return list;
	}

	public List<sanpham> GetDataProductsPaginate(int start, int totalPage) {
		// TODO Auto-generated method stub
		return sanphamDao.GetDataProductsPaginate(start, totalPage);
	}
	@Override
	public List<sanpham> GetProduct6new() {
		 List<sanpham> list= sanphamDao.GetProduct6new();
		    return list;
	}
	
}
