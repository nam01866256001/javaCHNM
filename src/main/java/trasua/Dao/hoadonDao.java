package trasua.Dao;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import org.springframework.stereotype.Repository;

import trasua.Entity.ID;
import trasua.Entity.MapperID;
import trasua.Entity.cthd;
import trasua.Entity.hoadon;

@Repository
public class hoadonDao extends BaseDao {
	/*public int addhoadon(hoadon bill) {
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT INTO hoadon");
		sql.append("( ");
		sql.append("`maHoaDon`, `email`, `tenNguoiMua`, `sdt`, `diaChi`, `ghiChu`, `tongTien`");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("	'" +  getNewIDOfBill()  + "', ");	
		sql.append("	'" + bill.getEmail() + "', ");
		sql.append("	'" + bill.getTenNguoiMua() + "', ");
		sql.append("	'" + bill.getSdt() + "', ");
		sql.append("	'" + bill.getDiaChi() + "', ");
		sql.append("	'" + bill.getGhiChu() + "', ");
		sql.append("	'" + bill.getTongTien()+ "', ");
		sql.append(");");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	};*/
	public int addhoadon(hoadon bill) {
		String sql = "INSERT INTO hoadon(`maHoaDon`, `email`, `tenNguoiMua`, `sdt`, `diaChi`, `ghiChu`, `tongTien`) "
				+ "VALUES ('"+ getNewIDOfBill() + "','" + bill.getEmail() + "','" + bill.getTenNguoiMua() + "','" + bill.getSdt()
				+ "','"+bill.getDiaChi()+"','"+bill.getGhiChu()+"','"+bill.getTongTien()+"')";
		int check = _jdbcTemplate.update(sql);
		return check;
	}
	public String getDateNow() {
		LocalDateTime now = LocalDateTime.now();
		return dtf.format(now);
	}
	DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");

	public int GetIDLastBills() {
		StringBuffer sql = new StringBuffer();
		sql.append("select maHoaDon from hoadon order by maHoaDon desc limit 1");
		Integer id = _jdbcTemplate.queryForObject(sql.toString(), new Object[] {}, Integer.class);
		return id;
	};
	
	public int getNewIDOfBill() {
		int newId;
		int lastID = GetIDLastBills();
		newId= lastID+1;
		return newId;
	}
	public int GetIDLastBilldetail() {
		StringBuffer sql = new StringBuffer();
		sql.append("select maCT from cthd order by maCT desc limit 1");
		Integer id = _jdbcTemplate.queryForObject(sql.toString(), new Object[] {}, Integer.class);
		return id;
	};
	
	public int getNewIDOfBilldetail() {
		int newId;
		int lastID = GetIDLastBilldetail();
		newId= lastID+1;
		return newId;
	}
	/*
	 * public int getIDLastBills() { int lastId ; String sql =
	 * "select maHoaDon from hoadon order by maHoaDon desc limit 1"; ID id = new
	 * ID(); id = _jdbcTemplate.queryForRowGet(sql.toString())); if (id != null) {
	 * lastId = id.getID(); return lastId;
	 * 
	 * } else { lastId = 1; return lastId; }
	 * 
	 * }
	 */

	/*public int addcthd(cthd cthd) {
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT INTO cthd ");
		sql.append("( ");
		sql.append("	maCT,");
		sql.append("	maSanPham,");
		sql.append("	maHoaDon,");
		sql.append("	soLuong,");
		sql.append("	giaBan,");
		sql.append("	thanhTien,");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("	'" + cthd.getMaCT() + "', ");
		sql.append("	'" + cthd.getMaSanPham() + "', ");
		sql.append("'	'" + cthd.getMaHoaDon() + "', ");
		sql.append("'	'" + cthd.getQuanty() + "', ");
		sql.append("'	'" + cthd.getTotal() + "', ");
		sql.append("'	'" + cthd.getThanhTien() + "', ");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}*/
	public int addcthd(cthd cthd) {
		String sql = "INSERT INTO cthd(`maCT`, `tenSanPham`, `maHoaDon`, `soLuong`, `giaBan`, `thanhTien`) "
				+ "VALUES ('"+ getNewIDOfBilldetail() + "','" + cthd.getTenSanPham() + "','" + cthd.getMaHoaDon() + "','" + cthd.getQuanty()
				+ "','"+cthd.getTotal()+"','"+cthd.getThanhTien()+"')";
		int check = _jdbcTemplate.update(sql);
		return check;
	}
}
