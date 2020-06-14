package entity;

import java.util.Date;

public class Supplier_delivery {

	private Integer delivery_id; 
	private Date date; 
	private Integer total_cost;
	
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
	public Integer getTotal_cost() {
		return total_cost;
	}
	public void setTotal_cost(Integer total_cost) {
		this.total_cost = total_cost;
	}
	
	
}
