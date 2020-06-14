package entity;

import java.util.Date;


public class Delivery_items {
	
	private Integer id;
	private Integer delivery_id; 
	private Date date; 
	private String item;
	private Integer cost_per_one;
	private Integer quantity;
	private Integer total_cost;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getDelivery_id() {
		return delivery_id;
	}
	public void setDelivery_id(Integer delivery_id) {
		this.delivery_id = delivery_id;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getItem() {
		return item;
	}
	public void setItem(String item) {
		this.item = item;
	}
	public Integer getCost_per_one() {
		return cost_per_one;
	}
	public void setCost_per_one(Integer cost_per_one) {
		this.cost_per_one = cost_per_one;
	}
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	public Integer getTotal_cost() {
		return total_cost;
	}
	public void setTotal_cost(Integer total_cost) {
		this.total_cost = total_cost;
	}
	
}
