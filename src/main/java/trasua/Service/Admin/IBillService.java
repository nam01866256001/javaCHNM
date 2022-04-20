package trasua.Service.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import trasua.Entity.hoadon;

@Service
public interface IBillService {
	@Autowired
	public List<hoadon> GetDataHD();
}
