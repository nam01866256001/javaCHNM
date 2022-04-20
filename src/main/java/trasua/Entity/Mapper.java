package trasua.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class Mapper implements RowMapper<sanpham> {
	public sanpham mapRow(ResultSet rs, int rowNum) throws SQLException {
		sanpham sp = new sanpham();
		sp.setMaSanPham(rs.getInt("MaSanPham"));
		sp.setMaLoaiSanPham(rs.getInt("MaLoaiSanPham"));
		sp.setTenSanPham(rs.getString("TenSanPham"));
		sp.setHinhAnh(rs.getString("HinhAnh"));
		sp.setGiaBan(rs.getFloat("giaBan"));
		return sp;
	}
}
