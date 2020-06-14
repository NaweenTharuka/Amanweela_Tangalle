package dao;

import java.util.List;

import entity.Leaves;

public interface LeavesDao {
	
	List<Leaves> get();
	boolean save(Leaves l);
	Leaves get(int id);
	boolean update(Leaves l);
	boolean delete(int id);
	String message();


}
