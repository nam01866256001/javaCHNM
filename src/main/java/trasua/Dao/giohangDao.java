package trasua.Dao;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import trasua.Entity.giohang;
import trasua.Entity.sanpham;

@Repository
public class giohangDao extends BaseDao {
	@Autowired
	sanphamDao SanphamDao = new sanphamDao();

	public HashMap<Long, giohang> addCart(long id, HashMap<Long, giohang> giohang) {
		giohang itemCart = new giohang();
		sanpham SP = SanphamDao.FindProductByID(id);
		if (SP != null && giohang.containsKey(id)) {
			itemCart = giohang.get(id);
			itemCart.setQuanty(itemCart.getQuanty() + 1);
			itemCart.setTotal(itemCart.getQuanty() * itemCart.getProduct().getGiaBan());
		}
		else {
			itemCart.setProduct(SP);
			itemCart.setQuanty(1);
			itemCart.setTotal(SP.getGiaBan());
		}
		giohang.put(id, itemCart);
		return giohang;
	}

	public HashMap<Long, giohang> editCart(long id, int quanty, HashMap<Long, giohang> giohang) {
		if (giohang == null) {
			return giohang;
		}
		giohang itemCart = new giohang();
		sanpham SP = SanphamDao.FindProductByID(id);
		if (giohang.containsKey(id)) {
			itemCart = giohang.get(id);
			itemCart.setQuanty(1);
			itemCart.setQuanty(quanty);
			float total = quanty * itemCart.getProduct().getGiaBan();
			itemCart.setTotal(total);
		}
		giohang.put(id, itemCart);
		return giohang;
	}

	public HashMap<Long, giohang> deleteCart(long id, HashMap<Long, giohang> giohang) {
		if (giohang == null) {
			return giohang;
		}
		if (giohang.containsKey(id)) {
			giohang.remove(id);
		}
		return giohang;
	}

	public int TotalQuanty(HashMap<Long, giohang> giohang) {
		int totalQuanty = 0;
		for (Map.Entry<Long, giohang> itemCart : giohang.entrySet()) {
			totalQuanty += itemCart.getValue().getQuanty();
		}
		return totalQuanty;
	}

	public float TotalPrice(HashMap<Long, giohang> giohang) {
		float TotalPrice = 0;
		for (Map.Entry<Long, giohang> itemCart : giohang.entrySet()) {
			TotalPrice += itemCart.getValue().getTotal();
		}
		return TotalPrice;
	}
}