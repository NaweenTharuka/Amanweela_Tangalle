package dao;


import java.util.List;

import entity.Staff;

public interface StaffDao {
	
	List<Staff> get();
	boolean save(Staff s);
	Staff get(int id);
	boolean update(Staff s);
	boolean delete(int id);
	String message();

}
