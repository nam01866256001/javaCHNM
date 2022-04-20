package trasua.Entity;

public class giohang {
	private int quanty;
	private float total;
	private sanpham product;
	
	
	
	public giohang() {
	}
	
	public giohang(int quanty, float total, sanpham product) {
		super();
		this.quanty = quanty;
		this.total = total;
		this.product = product;
	}
	
	public int getQuanty() {
		return quanty;
	}
	public void setQuanty(int quanty) {
		this.quanty = quanty;
	}
	public float getTotal() {
		return total;
	}
	public void setTotal(float total) {
		this.total = total;
	}
	public sanpham getProduct() {
		return product;
	}
	public void setProduct(sanpham product) {
		this.product = product;
	}
	
	
	
}
