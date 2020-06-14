package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;
import DBConnection.ConnectionUtil;
import entity.Contactus;


public class ContactusDaoImpl implements ContactusDao {

	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	PreparedStatement preparedStatement = null;
	@Override
	public List<Contactus> get() {
		List<Contactus> list = null;
		Contactus contactus = null;
		try {
			list = new ArrayList<Contactus>();
			String sql = "SELECT * FROM contactus";
			connection = (Connection) ConnectionUtil.openConnection();
			statement = (Statement) connection.createStatement();
			resultSet = statement.executeQuery(sql);

			while (resultSet.next()) {
				contactus = new Contactus();
				contactus.setId(resultSet.getInt("id"));
				contactus.setName(resultSet.getString("name"));
				contactus.setEmail(resultSet.getString("email"));
				contactus.setPhone(resultSet.getString("phone"));
				contactus.setCountry(resultSet.getString("country"));
				contactus.setMessage(resultSet.getString("message"));
				

				list.add(contactus);
			}
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	@Override
	public boolean save(Contactus c) {
		boolean flag = false;
		try {
			String sql = "INSERT INTO contactus(name, email, phone, country, message)VALUES('"+c.getName()+"', '"+c.getEmail()+"', '"+c.getPhone()+"', '"+c.getCountry()+"', '"+c.getMessage()+"')";
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
			String sql = "DELETE FROM contactus WHERE id='"+id+"'";
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
	public boolean Update(int id,Contactus c) {
		boolean flag = false;
		try {
			String sql = "UPDATE contactus SET name='"+c.getName()+"', email='"+c.getEmail()+"', phone='"+c.getPhone()+"', country='"+c.getCountry()+"', message='"+c.getMessage()+"' "+
								"WHERE id='"+id+"'";
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
			String sql = "SELECT MAX(id) as id FROM contactus";
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
	
	@Override
	public Contactus GetContactusDetails(int id) {
		Contactus contactus = new Contactus();
		try {
			String sql = "SELECT * FROM contactus WHERE id='"+id+"'";
			connection = (Connection) ConnectionUtil.openConnection();
			statement = (Statement) connection.createStatement();
			resultSet = statement.executeQuery(sql);

			while (resultSet.next()) {
				contactus.setId(resultSet.getInt("id"));
				contactus.setTitle(resultSet.getString("title"));
				contactus.setName(resultSet.getString("name"));
				contactus.setEmail(resultSet.getString("email"));
				contactus.setPhone(resultSet.getString("phone"));
				contactus.setCountry(resultSet.getString("country"));
				contactus.setMessage(resultSet.getString("message"));
			}
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return contactus;
	}
	
}
