package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;

import java.util.ArrayList;
import java.util.List;
import DBConnection.ConnectionUtil;
import entity.Roompayment;

public class RoompaymentDaoImpl implements RoompaymentDao {
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	PreparedStatement preparedStatement = null;
	@Override
	public List<Roompayment> get() {
		List<Roompayment> list = null;
		Roompayment roompayment = null;
		// TODO Auto-generated method stub
		try {
			list = new ArrayList<Roompayment>();
			String sql = "SELECT * FROM roompayment";
			connection = (Connection) ConnectionUtil.openConnection();
			statement = (Statement) connection.createStatement();
			resultSet = statement.executeQuery(sql);

			while (resultSet.next()) {
				roompayment = new Roompayment();
				roompayment.setPay_id(resultSet.getInt("pay_id"));
				roompayment.setRes_id(resultSet.getInt("res_id"));
				roompayment.setFirst_name(resultSet.getString("first_name"));
				roompayment.setLast_name(resultSet.getString("last_name"));
				roompayment.setCheck_in(resultSet.getString("check_in"));
				roompayment.setCheck_out(resultSet.getString("check_out"));
				roompayment.setNic_no(resultSet.getString("nic_no"));
				roompayment.setEmail(resultSet.getString("email"));
				roompayment.setPhone_number(resultSet.getString("phone_number"));
				roompayment.setPayment(resultSet.getString("payment"));
				roompayment.setRoom_rent(resultSet.getString("room_rent"));
				roompayment.setCardno(resultSet.getString("cardno"));
				roompayment.setCard_type(resultSet.getString("card_type"));
				roompayment.setExdate(resultSet.getString("exdate"));
				roompayment.setCvv(resultSet.getString("cvv"));

				list.add(roompayment);
			}
		} 
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	@Override
	public boolean save(Roompayment rp) {
		boolean flag = false;
		try {
			String sql = "INSERT INTO roompayment(res_id, first_name, last_name, check_in, check_out, nic_no, email, phone_number, payment, room_rent, cardno, card_type, exdate, cvv)VALUES('"+rp.getRes_id()+"', '"+rp.getFirst_name()+"', '"+rp.getLast_name()+"', '"+rp.getCheck_in()+"', '"+rp.getCheck_out()+"', '"+rp.getNic_no()+"', '"+rp.getEmail()+"', '"+rp.getPhone_number()+"', '"+rp.getPayment()+"', '"+rp.getRoom_rent()+"', '"+rp.getCardno()+"', '"+rp.getCard_type()+"', '"+rp.getExdate()+"', '"+rp.getCvv()+"')";
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
			String sql = "SELECT MAX(pay_id) as pay_id FROM roompayment";
			connection = (Connection) ConnectionUtil.openConnection();
			statement = (Statement) connection.createStatement();
			resultSet = statement.executeQuery(sql);

			while (resultSet.next()) {
			    return resultSet.getInt("pay_id");
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return -1;
	}
	
	@Override
	public Roompayment GetRoompaymentDetails(int id) {
		Roompayment roompayment = new Roompayment();
		// TODO Auto-generated method stub
		try {
			String sql = "SELECT * FROM roompayment WHERE res_id='"+id+"'";
			connection = (Connection) ConnectionUtil.openConnection();
			statement = (Statement) connection.createStatement();
			resultSet = statement.executeQuery(sql);

			while (resultSet.next()) {
				roompayment = new Roompayment();
				roompayment.setPay_id(resultSet.getInt("pay_id"));
				roompayment.setRes_id(resultSet.getInt("res_id"));
				roompayment.setFirst_name(resultSet.getString("first_name"));
				roompayment.setLast_name(resultSet.getString("last_name"));
				roompayment.setCheck_in(resultSet.getString("check_in"));
				roompayment.setCheck_out(resultSet.getString("check_out"));
				roompayment.setNic_no(resultSet.getString("nic_no"));
				roompayment.setEmail(resultSet.getString("email"));
				roompayment.setPhone_number(resultSet.getString("phone_number"));
				roompayment.setPayment(resultSet.getString("payment"));
				roompayment.setRoom_rent(resultSet.getString("room_rent"));
				roompayment.setCardno(resultSet.getString("cardno"));
				roompayment.setCard_type(resultSet.getString("card_type"));
				roompayment.setExdate(resultSet.getString("exdate"));
				roompayment.setCvv(resultSet.getString("cvv"));
			}
		} 
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return roompayment;
	}
	

}
