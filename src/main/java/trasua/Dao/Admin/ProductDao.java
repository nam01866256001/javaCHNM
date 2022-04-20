package trasua.Dao.Admin;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import trasua.Entity.Mapper;
import trasua.Entity.sanpham;
@Repository
public class ProductDao {
	@Autowired
	public JdbcTemplate _JdbcTemplate;
	
	public List<sanpham> GetDataSlide(){
		List<sanpham> list = new ArrayList<sanpham>();
		String sql = "SELECT * FROM sanpham";
		list = _JdbcTemplate.query(sql, new Mapper());
		return list;
	} 
	
	public int insert (sanpham sp) {	
		
			String sql = "INSERT INTO sanpham(maSanPham, maLoaiSanPham, tenSanPham, giaBan,hinhAnh,ngayTao,ngayCapNhat ) VALUES ('"
					+ sp.getMaSanPham() + "','" + sp.getMaLoaiSanPham() + "',N'" + sp.getTenSanPham() + "','"
					+ sp.getGiaBan() + "','" + sp.getHinhAnh()  + "' ,'" + getDateNow().toString()  + "','" + getDateNow().toString()  + "')";
			int ins = _JdbcTemplate.update(sql.toString());
			return ins;
	
	}
	public String getDateNow() {
		LocalDateTime now = LocalDateTime.now();
		return dtf.format(now);
	}
	DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
	public void edit (sanpham product,long idProduct) {	
		
		String sql = "UPDATE `sanpham` SET `maLoaiSanPham`='" + product.getMaLoaiSanPham() + "',`tenSanPham`='" + product.getTenSanPham()
		+ "',`hinhAnh`='" + product.getHinhAnh() + "',`giaBan`='" + product.getGiaBan() 
		+ "' WHERE `maSP`='" + idProduct + "'";
		_JdbcTemplate.update(sql);
		

}
	public void delete(int id) {
		String sql = "DELETE FROM `sanpham` WHERE maSanPham = '" + id + "'";
		_JdbcTemplate.update(sql);

	}
}
