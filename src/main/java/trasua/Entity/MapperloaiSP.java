package trasua.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperloaiSP implements RowMapper<loaisanpham>{
	public loaisanpham mapRow(ResultSet rs, int rowNum) throws SQLException {
		loaisanpham lsp = new loaisanpham();
		lsp.setMaLoaiSanPham(rs.getInt("maLoaiSanPham"));
		lsp.setTenLoaiSanPham(rs.getString("tenLoaiSanPham"));
		return lsp;
	}
}
