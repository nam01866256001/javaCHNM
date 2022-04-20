package trasua.Dao;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import org.springframework.stereotype.Repository;

import trasua.Entity.cthd;
import trasua.Entity.hoadon;

@Repository
public class hoadonDao extends BaseDao {
	public int addhoadon(hoadon bill) {
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT INTO hoadon");
		sql.append("( ");
		sql.append("`maHoaDon`, `email`, `tenNguoiMua`, `sdt`, `diaChi`, `ghiChu`,`ngayMua`, `soLuong`, `tongTien`");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("	'" + "NULL" + "', ");	
		sql.append("	'" + bill.getEmail() + "', ");
		sql.append("	'" + bill.getTenNguoiMua() + "', ");
		sql.append("	'" + bill.getSdt() + "', ");
		sql.append("	'" + bill.getDiaChi() + "', ");
		sql.append("	'" + bill.getGhiChu() + "', ");
		sql.append("	'" + "2022"+ "', ");
		sql.append("	'" + "1" + "', ");
		sql.append("	'" + "1" + "'");
		sql.append(");");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	};
	public String getDateNow() {
		LocalDateTime now = LocalDateTime.now();
		return dtf.format(now);
	}
	DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");

	public int GetIDLastBills() {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT MAX(id) FROM hoadon;");
		Integer id = _jdbcTemplate.queryForObject(sql.toString(), new Object[] {}, 
				Integer.class);
		return id;
	};

	public int addcthd(cthd cthd) {
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT INTO cthd ");
		sql.append("( ");
		sql.append("	maCT,");
		sql.append("	maSanPham,");
		sql.append("	maHoaDon,");
		sql.append("	soLuong,");
		sql.append("	giaBan,");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("	'" + cthd.getMaCT() + "', ");
		sql.append("	'" + cthd.getTenSanPham() + "', ");
		sql.append("'	'" + cthd.getMaHoaDon() + "', ");
		sql.append("'	'" + cthd.getGiaBan() + "', ");
		sql.append("'	'" + cthd.getThanhTien() + "', ");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}
}
