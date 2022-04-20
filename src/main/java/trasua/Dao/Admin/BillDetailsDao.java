package trasua.Dao.Admin;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import trasua.Entity.Mappercthd;
import trasua.Entity.cthd;
@Repository
public class BillDetailsDao {
	
	@Autowired
	public JdbcTemplate _JdbcTemplate;
	public List<cthd> GetDataCTHD(){
		List<cthd> list = new ArrayList<cthd>();
		String sql = "SELECT * FROM cthd";
		list = _JdbcTemplate.query(sql, new Mappercthd());
		return list;
	}
}
