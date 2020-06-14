package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;
import DBConnection.ConnectionUtil;
import entity.Supplier;

public class SupplierDaoImpl implements SupplierDao {

	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	PreparedStatement preparedStatement = null;
	
	@Override
	public List<Supplier> get() {
		
		List<Supplier> list = null;
		Supplier supplier = null;
		// TODO Auto-generated method stub
		try {
			list = new ArrayList<Supplier>();
			String sql = "SELECT * FROM supplier";
			connection = (Connection) ConnectionUtil.openConnection();
			statement = (Statement) connection.createStatement();
			resultSet = statement.executeQuery(sql);

			while (resultSet.next()) {
				supplier = new Supplier();
				supplier.setId(resultSet.getInt("id"));
				supplier.setFirst_name(resultSet.getString("first_name"));
				supplier.setLast_name(resultSet.getString("last_name"));
				supplier.setEmail(resultSet.getString("email"));
				supplier.setMobile(resultSet.getString("mobile"));
				supplier.setDob(resultSet.getString("dob"));
				supplier.setGender(resultSet.getString("gender"));
				supplier.setAddress(resultSet.getString("address"));
				supplier.setProfile_picture(resultSet.getString("profile_picture"));
				
				list.add(supplier);
			}
		} 
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public boolean save(Supplier s) {
		boolean flag = false;
		try {
			String sql = "INSERT INTO supplier(first_name, last_name, email, mobile, dob, address, gender, profile_picture)VALUES('"+s.getFirst_name()+"', '"+s.getLast_name()+"', '"+s.getEmail()+"', '"+s.getMobile()+"', '"+s.getDob()+"', '"+s.getAddress()+"', '"+s.getGender()+"', '"+s.getProfile_picture()+"')";
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
	public Supplier get(int id) {
		Supplier supplier = null;
		try {
			supplier = new Supplier();
			String sql = "SELECT * FROM supplier WHERE id="+id;
			connection = (Connection) ConnectionUtil.openConnection();
			statement = (Statement) connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while(resultSet.next()) {
				supplier.setId(resultSet.getInt("id"));
				supplier.setFirst_name(resultSet.getString("first_name"));
				supplier.setLast_name(resultSet.getString("last_name"));
				supplier.setEmail(resultSet.getString("email"));
				supplier.setMobile(resultSet.getString("mobile"));
				supplier.setDob(resultSet.getString("dob"));
				supplier.setGender(resultSet.getString("gender"));
				supplier.setAddress(resultSet.getString("address"));
				supplier.setProfile_picture(resultSet.getString("profile_picture"));			}
		} catch (SQLException ex) {
			ex.printStackTrace();		
		}
		return supplier;
	}

	@Override
	public boolean update(Supplier s) {
		boolean flag = false;
		try {
			String sql = "UPDATE supplier SET first_name='"+s.getFirst_name()+"', last_name='"+s.getLast_name()+"',email='"+s.getEmail()+"',mobile='"+s.getMobile()+"',dob='"+s.getDob()+"',address='"+s.getAddress()+"',gender='"+s.getGender()+"',profile_picture='"+s.getProfile_picture()+"' WHERE id="+s.getId();
			connection = (Connection) ConnectionUtil.openConnection();
			preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
			preparedStatement.executeUpdate();
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
			String sql = "DELETE FROM supplier WHERE id="+id;
			connection = (Connection) ConnectionUtil.openConnection();
			preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
			preparedStatement.executeUpdate();
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return flag;
	}
}