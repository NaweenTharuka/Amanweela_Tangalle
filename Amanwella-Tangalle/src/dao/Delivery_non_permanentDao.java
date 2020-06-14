package dao;

import java.util.List;
import entity.Delivery_non_permanent;

public interface Delivery_non_permanentDao {

	boolean save(Delivery_non_permanent dnp);
	List<Delivery_non_permanent> get(Integer id);
	boolean delete(int id);
	Delivery_non_permanent getSingleDelivery(Integer id);


}
