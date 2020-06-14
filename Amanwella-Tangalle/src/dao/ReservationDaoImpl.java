package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;
import DBConnection.ConnectionUtil;
import entity.Reservation;
import entity.ReservationPayment;

import java.util.Date;

public class ReservationDaoImpl implements ReservationDao{

	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	PreparedStatement preparedStatement = null;
	@Override
	public List<Reservation> get() {
		List<Reservation> list = null;
		Reservation reservation = null;
		// TODO Auto-generated method stub
		try {
			list = new ArrayList<Reservation>();
			String sql = "SELECT * FROM reservation";
			connection = (Connection) ConnectionUtil.openConnection();
			statement = (Statement) connection.createStatement();
			resultSet = statement.executeQuery(sql);

			while (resultSet.next()) {
				reservation = new Reservation();
				reservation.setRes_id(resultSet.getInt("res_id"));
				reservation.setReservation_type(resultSet.getString("reservation_type"));
				reservation.setCheck_in(resultSet.getString("check_in"));
				reservation.setCheck_out(resultSet.getString("check_out"));
				reservation.setNum_of_days(resultSet.getInt("num_of_days"));
				reservation.setAdults(resultSet.getString("adults"));
				reservation.setChildren(resultSet.getString("children"));
				reservation.setRoom_count(resultSet.getString("room_count"));
				reservation.setStatus(resultSet.getString("status"));

				list.add(reservation);
			}
		} 
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	@Override
	public boolean save(Reservation r) {
		boolean flag = false;
		try {
			String sql = "INSERT INTO reservation(reservation_type, check_in, check_out, num_of_days, adults, children, room_count, status)VALUES('"+r.getReservation_type()+"', '"+r.getCheck_in()+"', '"+r.getCheck_out()+"', '"+r.getNum_of_days()+"', '"+r.getAdults()+"', '"+r.getChildren()+"', '"+r.getRoom_count()+"', '"+r.getStatus()+"')";
			connection = (Connection) ConnectionUtil.openConnection();
			preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
			preparedStatement.executeUpdate();
			flag = true;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}
	
	@Override
	public boolean Delete(int id) {
		boolean flag = false;
		try {
			String sql = "DELETE FROM reservation WHERE res_id='"+id+"'";
			connection = (Connection) ConnectionUtil.openConnection();
			preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
			preparedStatement.execute();
			flag = true;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}
	
	@Override
	public boolean Update(int id,Reservation r) {
		boolean flag = false;
		try {
			String sql = "UPDATE reservation SET reservation_type='"+r.getReservation_type()+"', check_in='"+r.getCheck_in()+"', check_out='"+r.getCheck_out()+"',num_of_days='"+r.getNum_of_days()+"', adults='"+r.getAdults()+"', children='"+r.getChildren()+"', room_count='"+r.getRoom_count()+"', status='"+r.getStatus()+"' " +
								"WHERE res_id='"+id+"'";
			connection = (Connection) ConnectionUtil.openConnection();
			preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
			
			preparedStatement.executeUpdate();
			flag = true;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}
	
	@Override
	public int GetMaxId() {
		try {
			String sql = "SELECT MAX(res_id) as res_id FROM reservation";
			connection = (Connection) ConnectionUtil.openConnection();
			statement = (Statement) connection.createStatement();
			resultSet = statement.executeQuery(sql);

			while (resultSet.next()) {
			    return resultSet.getInt("res_id");
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return -1;
	}
	
	@Override
	public Reservation GetReservationDetails(int id) {
		Reservation reservation = new Reservation();
		// TODO Auto-generated method stub
		try {
			String sql = "SELECT * FROM reservation WHERE res_id='"+id+"'";
			connection = (Connection) ConnectionUtil.openConnection();
			statement = (Statement) connection.createStatement();
			resultSet = statement.executeQuery(sql);

			while (resultSet.next()) {
				reservation.setRes_id(resultSet.getInt("res_id"));
				reservation.setReservation_type(resultSet.getString("reservation_type"));
				reservation.setCheck_in(resultSet.getString("check_in"));
				reservation.setCheck_out(resultSet.getString("check_out"));
				reservation.setNum_of_days(resultSet.getInt("num_of_days"));
				reservation.setAdults(resultSet.getString("adults"));
				reservation.setChildren(resultSet.getString("children"));
				reservation.setRoom_count(resultSet.getString("room_count"));
				reservation.setDate(resultSet.getTimestamp("Date"));
				reservation.setStatus(resultSet.getString("status"));
			}
		} 
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return reservation;
	}
	/**
	 * @return
	 */
	/**
	 * @return
	 */
	public List<ReservationPayment> getReservationPayment() {
		List<ReservationPayment> list = null;
		ReservationPayment reservationPayment = null;
		// TODO Auto-generated method stub
		try {
			list = new ArrayList<ReservationPayment>();
			String sql = "select a.* , b.pay_id, b.first_name, b.last_name, b.Nic_no, b.email, b.phone_number, b.payment, b.room_rent, b.cardno, b.card_type, b.exdate, b.cvv from reservation a left join roompayment b on a.res_id=b.res_id";
			
			connection = (Connection) ConnectionUtil.openConnection();
			statement = (Statement) connection.createStatement();
			resultSet = statement.executeQuery(sql);

			while (resultSet.next()) {
				
				  reservationPayment = new ReservationPayment();
				  reservationPayment.setReservation_res_id(resultSet.getInt("res_id"));
				  reservationPayment.setReservation_reservation_type(resultSet.getString("reservation_type"));
				  reservationPayment.setReservation_check_in(resultSet.getString("check_in"));
				  reservationPayment.setReservation_check_out(resultSet.getString("check_out"));
				  reservationPayment.setReservation_num_of_days(resultSet.getInt("num_of_days"));
				  reservationPayment.setReservation_adults(resultSet.getString("adults"));
				  reservationPayment.setReservation_children(resultSet.getString("children"));
				  reservationPayment.setReservation_room_count(resultSet.getString("room_count"));
				  reservationPayment.setReservation_Date(resultSet.getTimestamp("Date"));
				  reservationPayment.setReservation_status(resultSet.getString("status"));
				  reservationPayment.setPayment_pay_id(resultSet.getInt("pay_id"));
				  reservationPayment.setPayment_first_name(resultSet.getString("first_name"));
				  reservationPayment.setPayment_last_name(resultSet.getString("last_name"));
				  reservationPayment.setPayment_Nic_no(resultSet.getString("Nic_no"));
				  reservationPayment.setPayment_email(resultSet.getString("email"));
				  reservationPayment.setPayment_phone_number(resultSet.getString("phone_number"));
				  reservationPayment.setPayment_payment(resultSet.getString("payment"));
				  reservationPayment.setPayment_room_rent(resultSet.getString("room_rent"));
				  reservationPayment.setPayment_cardno(resultSet.getString("cradno"));
				  reservationPayment.setPayment_card_type(resultSet.getString("card_type"));
				  reservationPayment.setPayment_exdate(resultSet.getString("exdate"));
				  reservationPayment.setPayment_cvv(resultSet.getString("cvv"));
				  
				  list.add(reservationPayment);
				 
			}
		} 
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
}
