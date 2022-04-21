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

	public HashMap<Long, giohang> addCart(long id, HashMap<Long, giohang> gh) {
		giohang itemCart = new giohang();
		sanpham SP = SanphamDao.FindProductByID(id);
		if (SP != null && gh.containsKey(id)) {
			itemCart = gh.get(id);
			itemCart.setQuanty(itemCart.getQuanty() + 1);
			itemCart.setTotal(itemCart.getQuanty() * itemCart.getProduct().getGiaBan());
		}
		else {
			itemCart.setProduct(SP);
			itemCart.setQuanty(1);
			itemCart.setTotal(SP.getGiaBan());
		}
		gh.put(id, itemCart);
		return gh;
	}

	public HashMap<Long, giohang> editCart(long id, int quanty, HashMap<Long, giohang> gh) {
		if (gh == null) {
			return gh;
		}
		giohang itemCart = new giohang();
		sanpham SP = SanphamDao.FindProductByID(id);
		if (gh.containsKey(id)) {
			itemCart = gh.get(id);
			itemCart.setQuanty(1);
			itemCart.setQuanty(quanty);
			float total = quanty * itemCart.getProduct().getGiaBan();
			itemCart.setTotal(total);
		}
		gh.put(id, itemCart);
		return gh;
	}

	public HashMap<Long, giohang> deleteCart(long id, HashMap<Long, giohang> gh) {
		if (gh == null) {
			return gh;
		}
		if (gh.containsKey(id)) {
			gh.remove(id);
		}
		return gh;
	}

	public int TotalQuanty(HashMap<Long, giohang> gh) {
		int totalQuanty = 0;
		for (Map.Entry<Long, giohang> itemCart : gh.entrySet()) {
			totalQuanty += itemCart.getValue().getQuanty();
		}
		return totalQuanty;
	}

	public Double TotalPrice(HashMap<Long, giohang> gh) {
		double TotalPrice = 0;
		for (Map.Entry<Long, giohang> itemCart : gh.entrySet()) {
			TotalPrice += itemCart.getValue().getTotal();
		}
		return TotalPrice;
	}
}
