package trasua.Entity;

public class cthd {
	private long maCT;
	private long maHoaDon;
	private String tenSanPham;
	private long quanty;
	private float total;
	private float thanhTien;
	public cthd() {
		super();
		// TODO Auto-generated constructor stub
	}
	public cthd(long maCT, long maHoaDon, String tenSanPham, long quanty, float total, float thanhTien) {
		super();
		this.maCT = maCT;
		this.maHoaDon = maHoaDon;
		this.tenSanPham = tenSanPham;
		this.quanty = quanty;
		this.total = total;
		this.thanhTien = thanhTien;
	}
	public long getMaCT() {
		return maCT;
	}
	public void setMaCT(long maCT) {
		this.maCT = maCT;
	}
	public long getMaHoaDon() {
		return maHoaDon;
	}
	public void setMaHoaDon(long maHoaDon) {
		this.maHoaDon = maHoaDon;
	}
	public String getTenSanPham() {
		return tenSanPham;
	}
	public void setTenSanPham(String tenSanPham) {
		this.tenSanPham = tenSanPham;
	}
	public long getQuanty() {
		return quanty;
	}
	public void setQuanty(long quanty) {
		this.quanty = quanty;
	}
	public float getTotal() {
		return total;
	}
	public void setTotal(float total) {
		this.total = total;
	}
	public float getThanhTien() {
		return thanhTien;
	}
	public void setThanhTien(float thanhTien) {
		this.thanhTien = thanhTien;
	}
	
}
	
	
	
	