package entity;

import java.sql.Timestamp;

public class Reservation {
	private Integer res_id;
	private String reservation_type;
	private String check_in;
	private String check_out;
	private Integer num_of_days;
	private String adults;
	private String children;
	private String room_count;
	private Timestamp Date;
	private String status;
	
	public int getRes_id() {
		return res_id;
	}
	public void setRes_id(Integer res_id) {
		this.res_id = res_id;
	}
	public String getReservation_type() {
		return reservation_type;
	}
	public void setReservation_type(String reservation_type) {
		this.reservation_type = reservation_type;
	}
	public String getCheck_in() {
		return check_in;
	}
	public void setCheck_in(String check_in) {
		this.check_in = check_in;
	}
	public String getCheck_out() {
		return check_out;
	}
	public void setCheck_out(String check_out) {
		this.check_out = check_out;
	}
	
	public Integer getNum_of_days() {
		return num_of_days;
	}
	public void setNum_of_days(Integer num_of_days) {
		this.num_of_days = num_of_days;
	}
	public String getAdults() {
		return adults;
	}
	public void setAdults(String adults) {
		this.adults = adults;
	}
	public String getChildren() {
		return children;
	}
	public void setChildren(String children) {
		this.children = children;
	}
	public String getRoom_count() {
		return room_count;
	}
	public void setRoom_count(String room_count) {
		this.room_count = room_count;
	}
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Timestamp getDate() {
		return Date;
	}
	public void setDate(Timestamp timestamp) {
		Date = timestamp;
	}
	
}
