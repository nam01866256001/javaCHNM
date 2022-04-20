package trasua.Dao.Admin;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import trasua.Entity.Mapperhoadon;
import trasua.Entity.hoadon;
@Repository
public class BillDao {
	@Autowired
	public JdbcTemplate _JdbcTemplate;
	public List<hoadon> GetDataHD(){
		List<hoadon> list = new ArrayList<hoadon>();
		String sql = "SELECT * FROM hoadon";
		list = _JdbcTemplate.query(sql, new Mapperhoadon());
		return list;
	}
}
