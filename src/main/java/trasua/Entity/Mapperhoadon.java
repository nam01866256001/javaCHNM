package trasua.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class Mapperhoadon implements RowMapper<hoadon> {

	@Override
	public hoadon mapRow(ResultSet rs, int rowNum) throws SQLException {
		hoadon hoadon = new hoadon();
		hoadon.setMaHoaDon(rs.getInt("maHoaDon"));
		hoadon.setEmail(rs.getString("email"));
		hoadon.setTenNguoiMua(rs.getString("tenNguoiMua"));
		hoadon.setSdt(rs.getString("sdt"));
		hoadon.setDiaChi(rs.getString("diaChi"));
		hoadon.setTongTien(rs.getDouble("tongTien"));
		return hoadon;
	}
}