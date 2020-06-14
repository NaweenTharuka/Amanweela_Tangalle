package entity;

public class Attendance {
	
	private Integer id;
	private String date; 
	private Integer staffid; 
	private String intime;
	private String outtime;
	private String whours;
	private String ehours;
	
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
	public Integer getStaffid() {
		return staffid;
	}
	public void setStaffid(Integer staffid) {
		this.staffid = staffid;
	}
	public String getIntime() {
		return intime;
	}
	public void setIntime(String intime) {
		this.intime = intime;
	}
	public String getOuttime() {
		return outtime;
	}
	public void setOuttime(String outtime) {
		this.outtime = outtime;
	}
	public String getWhours() {
		return whours;
	}
	public void setWhours(String whours) {
		this.whours = whours;
	}
	public String getEhours() {
		return ehours;
	}
	public void setEhours(String ehours) {
		this.ehours = ehours;
	}
	
	
	


}
