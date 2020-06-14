package entity;

public class Staff {
	
	private Integer id;
	private String first_name; 
	private String last_name; 
	private String email;
	private String mobile;
	private String dob;
	private String address;
	private String gender;
	private String position;
	private String tow;
	
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getTow() {
		return tow;
	}
	@Override
	public String toString() {
		return "Staff [id=" + id + ", first_name=" + first_name + ", last_name=" + last_name + ", email=" + email
				+ ", mobile=" + mobile + ", dob=" + dob + ", address=" + address + ", gender=" + gender + ", position="
				+ position + ", tow=" + tow + "]";
	}
	public void setTow(String tow) {
		this.tow = tow;
	}

	
	

}
