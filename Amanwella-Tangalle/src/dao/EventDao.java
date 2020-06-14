package dao;

import java.util.List;

import entity.Event;

public interface EventDao {
	
	List<Event> get();
	boolean save(Event s);
	Event get(int id);
	boolean update(Event s);
	boolean Update(int id, Event s);
	boolean delete(int id);
	String message();
	int GetMaxId();

}
