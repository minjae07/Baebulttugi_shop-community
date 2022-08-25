package shop.vo;

public class ProductVO {
	private int productId;
	private String productKind;
	private int productPrice ;
	private String productImage;
	private String productContent;
	private String productCategory;
	private int productReadCount;
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getProductKind() {
		return productKind;
	}
	public void setProductKind(String productKind) {
		this.productKind = productKind;
	}
	public int getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}
	public String getProductImage() {
		return productImage;
	}
	public void setProductImage(String productImage) {
		this.productImage = productImage;
	}
	public String getProductContent() {
		return productContent;
	}
	public String getProductCategory() {
		return productCategory;
	}
	public void setProductCategory(String productCategory) {
		this.productCategory = productCategory;
	}
	public void setProductContent(String productContent) {
		this.productContent = productContent;
	}
	public int getProductReadCount() {
		return productReadCount;
	}
	public void setProductReadCount(int productReadCount) {
		this.productReadCount = productReadCount;
	}
}
	