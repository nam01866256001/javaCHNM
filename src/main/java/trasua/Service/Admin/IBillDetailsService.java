package trasua.Service.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import trasua.Entity.cthd;

@Service
public interface IBillDetailsService {
	@Autowired
	public List<cthd> GetDataCTHD();
}
