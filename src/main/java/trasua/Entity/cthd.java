package trasua.Entity;

public class cthd {
	private long maCT;
	private String tenSanPham;
	private long maHoaDon;
	private long giaBan;
	private long soLuong;
	private double thanhTien;
	
	public cthd() {
		
	}
	public cthd(long maCT, String tenSanPham, long maHoaDon, long giaBan,long soLuong ,double thanhTien) {
		super();
		this.maCT = maCT;
		this.setTenSanPham(tenSanPham);
		this.maHoaDon = maHoaDon;
		this.setGiaBan(giaBan);
		this.setThanhTien(thanhTien);
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
	public double getThanhTien() {
		return thanhTien;
	}
	public void setThanhTien(double thanhTien) {
		this.thanhTien = thanhTien;
	}
	public long getGiaBan() {
		return giaBan;
	}
	public void setGiaBan(long giaBan) {
		this.giaBan = giaBan;
	}
	public String getTenSanPham() {
		return tenSanPham;
	}
	public void setTenSanPham(String tenSanPham) {
		this.tenSanPham = tenSanPham;
	}
	public long getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(long soLuong) {
		this.soLuong = soLuong;
	}
	
}
