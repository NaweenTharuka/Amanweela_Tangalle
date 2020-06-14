package dao;

import java.util.*;

import entity.Supplier;

public interface SupplierDao {
	List<Supplier> get();
	boolean save(Supplier s);
	Supplier get(int id);
	boolean update(Supplier s);
	boolean delete(int id);
}
