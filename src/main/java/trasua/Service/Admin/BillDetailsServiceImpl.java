package trasua.Service.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import trasua.Dao.Admin.BillDetailsDao;
import trasua.Entity.cthd;

@Service
public class BillDetailsServiceImpl implements IBillDetailsService {
	@Autowired
	BillDetailsDao bill;
	@Override
	public List<cthd> GetDataCTHD() {
		
		return bill.GetDataCTHD();
	}
}
