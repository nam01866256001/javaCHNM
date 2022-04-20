package trasua.Dao.Admin;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import trasua.Entity.MapperTaiKhoan;

import trasua.Entity.taikhoan;
@Repository
public class AccountDao {
	@Autowired
	public JdbcTemplate _JdbcTemplate;
	
	public List<taikhoan> GetDataAcc(){
		List<taikhoan> list = new ArrayList<taikhoan>();
		String sql = "SELECT * FROM taikhoan Where status=2";
		list = _JdbcTemplate.query(sql, new MapperTaiKhoan());
		return list;
	}
	public List<taikhoan> GetDataAccAdmin(){
		List<taikhoan> list = new ArrayList<taikhoan>();
		String sql = "SELECT * FROM taikhoan Where status=1";
		list = _JdbcTemplate.query(sql, new MapperTaiKhoan());
		return list;
	}
	
}
