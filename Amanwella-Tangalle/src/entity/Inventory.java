package entity;

public class Inventory {
	private Integer id;
	private String date; 
	private String room_id; 
	private String your_name;
	private String adults;
	private String item_quantity;
	private String liquor_quantity;
	private String extra_item;
	private String liquor;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getRoom_id() {
		return room_id;
	}
	public void setRoom_id(String room_id) {
		this.room_id = room_id;
	}
	public String getYour_name() {
		return your_name;
	}
	public void setYour_name(String your_name) {
		this.your_name = your_name;
	}
	public String getAdults() {
		return adults;
	}
	public void setAdults(String adults) {
		this.adults = adults;
	}
	public String getItem_quantity() {
		return item_quantity;
	}
	public void setItem_quantity(String item_quantity) {
		this.item_quantity = item_quantity;
	}
	public String getLiquor_quantity() {
		return liquor_quantity;
	}
	public void setLiquor_quantity(String liquor_quantity) {
		this.liquor_quantity = liquor_quantity;
	}
	public String getExtra_item() {
		return extra_item;
	}
	public void setExtra_item(String extra_item) {
		this.extra_item = extra_item;
	}
	public String getLiquor() {
		return liquor;
	}
	public void setLiquor(String liquor) {
		this.liquor = liquor;
	}
}
