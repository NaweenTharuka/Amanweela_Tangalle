package dao;

import entity.Roompayment;
import java.util.List;
public interface RoompaymentDao {
	List<Roompayment> get();
	boolean save(Roompayment rp);
	Roompayment GetRoompaymentDetails(int id);
	
	int GetMaxId();

}
