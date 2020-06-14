package dao;

import java.util.List;

import entity.Salary;


public interface SalaryDao {
	
	List<Salary> get();
	boolean save(Salary s);
	Salary get(int id);
	boolean update(Salary s);
	boolean delete(int id);
	String message();

}
