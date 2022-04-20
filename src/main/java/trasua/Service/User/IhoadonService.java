package trasua.Service.User;

import java.util.HashMap;

import org.springframework.stereotype.Service;

import trasua.Entity.giohang;
import trasua.Entity.hoadon;

@Service
public interface IhoadonService {
	public int addhoadon (hoadon bill);
	
	public void addcthd (HashMap<Long, giohang> giohang);
}
