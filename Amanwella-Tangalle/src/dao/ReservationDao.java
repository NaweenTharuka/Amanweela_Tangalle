package dao;

import java.util.List;
import entity.Reservation;
import entity.ReservationPayment;

public interface ReservationDao {
	List<Reservation> get();
	boolean save(Reservation r);
	boolean Delete(int id);
	boolean Update(int id,Reservation r);
	Reservation GetReservationDetails(int id);
	int GetMaxId();
	List<ReservationPayment> getReservationPayment();
}
