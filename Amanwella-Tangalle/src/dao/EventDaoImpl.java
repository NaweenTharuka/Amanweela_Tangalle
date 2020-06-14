package dao;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;

import DBConnection.ConnectionUtil;
import entity.Event;

public class EventDaoImpl implements EventDao{
	
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	PreparedStatement preparedStatement = null;
	
	public boolean save(Event s) {
		boolean flag = false;
		try {
			String sql = "INSERT INTO events(name, email, date, check_in, check_out, address)VALUES('"+s.getName()+"', '"+s.getEmail()+"', '"+s.getDate()+"', '"+s.getCheck_in()+"', '"+s.getCheck_out()+"', '"+s.getAddress()+"')";
			connection = (Connection) ConnectionUtil.openConnection();
			preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
			preparedStatement.executeUpdate();
			flag = true;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}

	public int GetMaxId() {
		try {
			String sql = "SELECT MAX(id) as id FROM events";
			connection = (Connection) ConnectionUtil.openConnection();
			statement = (Statement) connection.createStatement();
			resultSet = statement.executeQuery(sql);

			while (resultSet.next()) {
			    return resultSet.getInt("id");
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return -1;
	}
	
	public String message() {
		return "abcd";
	}
	
	
	@Override
	public List<Event> get() {
		List<Event> list = null;
		Event staff = null;
		// TODO Auto-generated method stub
		try {
			list = new ArrayList<Event>();
			String sql = "SELECT * FROM events";
			connection = (Connection) ConnectionUtil.openConnection();
			statement = (Statement) connection.createStatement();
			resultSet = statement.executeQuery(sql);

			while (resultSet.next()) {
				staff = new Event();
				staff.setId(resultSet.getInt("id"));
				staff.setName(resultSet.getString("name"));
				staff.setEmail(resultSet.getString("email"));
				staff.setDate(resultSet.getString("date"));
				staff.setCheck_in(resultSet.getString("check_in"));
				staff.setCheck_out(resultSet.getString("check_out"));
				staff.setAddress(resultSet.getString("address"));
				list.add(staff);
			}
		} 
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	

	@Override
	public Event get(int id) {
		Event staff = null;
		try {
			staff = new Event();
			String sql = "SELECT * FROM events WHERE id="+id;
			connection = (Connection) ConnectionUtil.openConnection();
			statement = (Statement) connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while(resultSet.next()) {
				staff.setId(resultSet.getInt("id"));
				staff.setName(resultSet.getString("name"));
				staff.setEmail(resultSet.getString("email"));
				staff.setDate(resultSet.getString("date"));
				staff.setCheck_in(resultSet.getString("check_in"));
				staff.setCheck_out(resultSet.getString("check_out"));
				staff.setAddress(resultSet.getString("address"));
			}
		}
		 catch (SQLException ex) {
			ex.printStackTrace();		
		}
		return staff;
	}

	@Override
	public boolean update(Event s) {
		boolean flag = false;
		try {
			String sql = "UPDATE events SET name='"+s.getName()+"', email='"+s.getEmail()+"', date='"+s.getDate()+"',check_in='"+s.getCheck_in()+"',check_out='"+s.getCheck_out()+"',address='"+s.getAddress()+"' WHERE id="+s.getId();
			connection = (Connection) ConnectionUtil.openConnection();
			preparedStatement.executeUpdate(sql);
			flag = true;
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return flag;
	}

	@Override
	public boolean delete(int id) {
		boolean flag = false;
		try {
			String sql = "DELETE FROM events WHERE id="+id;
			connection = (Connection) ConnectionUtil.openConnection();
			preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
			preparedStatement.executeUpdate();
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return flag;
	}

	@Override
	public boolean Update(int id, Event s) {
		boolean flag = false;
		try {
			String sql = "UPDATE events SET name='"+s.getName()+"', email='"+s.getEmail()+"', Date='"+s.getDate()+"', check_in='"+s.getCheck_in()+"',check_out='"+s.getCheck_out()+"',address='"+s.getAddress()+"'"+"WHERE id='"+id+"'";
			connection = (Connection) ConnectionUtil.openConnection();
			preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
			preparedStatement.executeUpdate();
			flag = true;
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return flag;
	}
	
}	