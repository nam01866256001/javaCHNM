package trasua.Entity;

public class hoadon {
	private int maHoaDon;
	private String email;
	private String tenNguoiMua;
	private String sdt;
	private String diaChi;
	private String ghiChu;
	private double tongTien;

	
	public hoadon() {
		super();
	}


	public hoadon(int maHoaDon, String email, String tenNguoiMua, String sdt, String diaChi, String ghiChu,
			double tongTien) {
		super();
		this.maHoaDon = maHoaDon;
		this.email = email;
		this.tenNguoiMua = tenNguoiMua;
		this.sdt = sdt;
		this.diaChi = diaChi;
		this.ghiChu = ghiChu;
		this.tongTien = tongTien;
	}


	public int getMaHoaDon() {
		return maHoaDon;
	}


	public void setMaHoaDon(int maHoaDon) {
		this.maHoaDon = maHoaDon;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getTenNguoiMua() {
		return tenNguoiMua;
	}


	public void setTenNguoiMua(String tenNguoiMua) {
		this.tenNguoiMua = tenNguoiMua;
	}


	public String getSdt() {
		return sdt;
	}


	public void setSdt(String sdt) {
		this.sdt = sdt;
	}


	public String getDiaChi() {
		return diaChi;
	}


	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}


	public String getGhiChu() {
		return ghiChu;
	}


	public void setGhiChu(String ghiChu) {
		this.ghiChu = ghiChu;
	}


	public double getTongTien() {
		return tongTien;
	}


	public void setTongTien(double tongTien) {
		this.tongTien = tongTien;
	}

	
}
