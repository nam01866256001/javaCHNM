package trasua.Service.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import trasua.Entity.hoadon;
import trasua.Dao.Admin.BillDao;
@Service
public class BillServiceImpl implements IBillService {
	@Autowired
	BillDao bill;
	@Override
	public List<hoadon> GetDataHD() {
		
		return bill.GetDataHD();
	}

}
