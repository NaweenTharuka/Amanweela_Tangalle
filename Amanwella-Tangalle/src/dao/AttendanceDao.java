package dao;

import java.util.List;

import entity.Attendance;

public interface AttendanceDao {
	
	
	List<Attendance> get();
	boolean save(Attendance a);
	Attendance get(int id);
	boolean update(Attendance a);
	boolean delete(int id);
	String message();

}
