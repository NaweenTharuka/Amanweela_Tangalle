package dao;

import java.util.List;
import entity.Contactus;

public interface ContactusDao {
	List<Contactus> get();
	boolean save(Contactus r);
	boolean Delete(int id);
	boolean Update(int id,Contactus r);
	entity.Contactus GetContactusDetails(int id);
	int GetMaxId();
}
