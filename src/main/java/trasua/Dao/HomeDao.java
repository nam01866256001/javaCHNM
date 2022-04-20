package trasua.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import trasua.Entity.Mapper;
import trasua.Entity.MapperloaiSP;
import trasua.Entity.loaisanpham;
import trasua.Entity.sanpham;

@Repository
public class HomeDao {
	@Autowired
	public JdbcTemplate _jdbcTemplate;
		
	public List<sanpham> GetDataSlide(){
		List<sanpham> list = new ArrayList<sanpham>();
		String sql = "SELECT * FROM sanpham";
		list = _jdbcTemplate.query(sql, new Mapper());
		return list;
	} 
	public List<loaisanpham> GetDataloaiSP(){
		List<loaisanpham> list = new ArrayList<loaisanpham>();
		String sql = "SELECT * FROM loaisanpham";
		list = _jdbcTemplate.query(sql, new MapperloaiSP());
		return list;
	}
	public List<sanpham> GetDataDetail(){
		List<sanpham> list = new ArrayList<sanpham>();
		String sql = "SELECT * FROM sanpham";
		list = _jdbcTemplate.query(sql, new Mapper());
		return list;
	} 
}
