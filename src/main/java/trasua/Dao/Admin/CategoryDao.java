package trasua.Dao.Admin;

import java.util.ArrayList;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;

import trasua.Entity.MapperloaiSP;
import trasua.Entity.loaisanpham;

public class CategoryDao {
	
	public JdbcTemplate _JdbcTemplate;
	public List<loaisanpham> GetDataloaiSP(){
		List<loaisanpham> list = new ArrayList<loaisanpham>();
		String sql = "SELECT * FROM loaisanpham";
		list = _JdbcTemplate.query(sql, new MapperloaiSP());
		return list;
	}
}
