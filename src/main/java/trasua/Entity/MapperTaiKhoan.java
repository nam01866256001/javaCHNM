package trasua.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperTaiKhoan implements RowMapper<taikhoan> {
	public taikhoan mapRow(ResultSet rs, int rowNum) throws SQLException {
		taikhoan tk = new taikhoan();
		tk.setId(rs.getInt("id"));
		tk.setEmail(rs.getString("email"));
		tk.setMatKhau(rs.getString("matKhau"));
		tk.setTenNguoiDung(rs.getString("tenNguoiDung"));
		tk.setDiaChi(rs.getString("diaChi"));
		tk.setSdt(rs.getString("sdt"));
		tk.setNgayTao(rs.getDate("ngayTao"));
		tk.setNgayCapNhat(rs.getDate("ngayCapNhat"));
		tk.setStatus(rs.getInt("status"));
		tk.setHinhanh(rs.getString("hinhanh"));
		return tk;
	}
}
