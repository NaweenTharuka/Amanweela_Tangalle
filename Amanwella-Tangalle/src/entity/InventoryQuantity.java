package entity;

public class InventoryQuantity {

	private Integer id;
	private Integer customer_id;
	private String item; 
	private Integer item_count;
	private String liquor; 
	private Integer liquor_count;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(Integer customer_id) {
		this.customer_id = customer_id;
	}
	public String getItem() {
		return item;
	}
	public void setItem(String item) {
		this.item = item;
	}
	public Integer getItem_count() {
		return item_count;
	}
	public void setItem_count(Integer item_count) {
		this.item_count = item_count;
	}
	public String getLiquor() {
		return liquor;
	}
	public void setLiquor(String liquor) {
		this.liquor = liquor;
	}
	public Integer getLiquor_count() {
		return liquor_count;
	}
	public void setLiquor_count(Integer liquor_count) {
		this.liquor_count = liquor_count;
	}
	
}
