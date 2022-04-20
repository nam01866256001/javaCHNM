package trasua.Service.User;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import trasua.Dao.hoadonDao;
import trasua.Entity.cthd;
import trasua.Entity.giohang;
import trasua.Entity.hoadon;

@Service
public class hoadonServiceImpl implements IhoadonService{
	@Autowired
	private hoadonDao hdDao;
	
	public int addhoadon(hoadon bill) {
		return hdDao.addhoadon(bill);
	}
	
	public void addcthd(HashMap<Long, giohang> carts) {
		int maHoaDon = hdDao.GetIDLastBills();
		for (Map.Entry<Long, giohang> itemCart : carts.entrySet()) {
			cthd ct= new cthd();
			ct.setMaHoaDon(maHoaDon);
			  ct.setMaSanPham(itemCart.getValue().getProduct().getMaSanPham());
				  ct.setGiaBan(itemCart.getValue().getQuanty());
			  ct.setThanhTien(itemCart.getValue().getTotal());
			  hdDao.addcthd(ct);
		}
	   
	}
}


