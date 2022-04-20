package trasua.Service.User;

import java.util.HashMap;

import org.springframework.stereotype.Service;

import trasua.Entity.giohang;

@Service
public interface IgiohangService {
	public HashMap<Long, giohang> addCart(long id, HashMap<Long, giohang> gh );
	public HashMap<Long, giohang> editCart(long id, int quanty, HashMap<Long, giohang> gh );
	public HashMap<Long, giohang> deleteCart(long id, HashMap<Long, giohang> gh );
	public int TotalQuanty(HashMap<Long, giohang> gh);
	public double TotalPrice(HashMap<Long, giohang> gh);
}
