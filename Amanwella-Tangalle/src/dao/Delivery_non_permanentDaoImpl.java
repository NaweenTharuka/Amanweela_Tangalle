package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;
import DBConnection.ConnectionUtil;
import entity.Delivery_non_permanent;
import entity.Supplier;

public class Delivery_non_permanentDaoImpl implements Delivery_non_permanentDao{
	
	Connection connection;
	Statement statement = null;
	ResultSet resultSet = null;
	PreparedStatement preparedStatement = null;
	
	@Override
	public boolean save(Delivery_non_permanent dnp) {
		boolean flag = false;
		try {
			String sql = "INSERT INTO deliveries(supplier_id, date, item1, item1_costPer1, item1_quantity, item2, item2_costPer1, item2_quantity, item3, item3_costPer1, item3_quantity, total)VALUES('"+dnp.getSupplier_id()+"', '"+dnp.getDate()+"', '"+dnp.getItem1()+"', '"+dnp.getItem1_costPer1()+"', '"+dnp.getItem1_quantity()+"', '"+dnp.getItem2()+"', '"+dnp.getItem2_costPer1()+"', '"+dnp.getItem2_quantity()+"', '"+dnp.getItem3()+"', '"+dnp.getItem3_costPer1()+"', '"+dnp.getItem3_quantity()+"', '"+dnp.getTotal()+"')";
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
	public List<Delivery_non_permanent> get(Integer id) {
		List<Delivery_non_permanent> list = null;
		Delivery_non_permanent delivery_non_permanent = null;
		// TODO Auto-generated method stub
		try {
			list = new ArrayList<Delivery_non_permanent>();
			String sql = "SELECT * FROM deliveries WHERE supplier_id="+id;
			connection = (Connection) ConnectionUtil.openConnection();
			statement = (Statement) connection.createStatement();
			resultSet = statement.executeQuery(sql);

			while (resultSet.next()) {
				delivery_non_permanent = new Delivery_non_permanent();
				delivery_non_permanent.setId(resultSet.getInt("id"));
				delivery_non_permanent.setSupplier_id(resultSet.getInt("supplier_id"));
				delivery_non_permanent.setDate(resultSet.getString("date"));
				delivery_non_permanent.setItem1(resultSet.getString("item1"));
				delivery_non_permanent.setItem1_costPer1(resultSet.getString("item1_costPer1"));
				delivery_non_permanent.setItem1_quantity(resultSet.getString("item1_quantity"));
				delivery_non_permanent.setItem2(resultSet.getString("item2"));
				delivery_non_permanent.setItem2_costPer1(resultSet.getString("item2_costPer1"));
				delivery_non_permanent.setItem2_quantity(resultSet.getString("item2_quantity"));
				delivery_non_permanent.setItem3(resultSet.getString("item3"));
				delivery_non_permanent.setItem3_costPer1(resultSet.getString("item3_costPer1"));
				delivery_non_permanent.setItem3_quantity(resultSet.getString("item3_quantity"));
				delivery_non_permanent.setTotal(resultSet.getInt("total"));
				list.add(delivery_non_permanent);
			}
		} 
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public boolean delete(int id) {
		boolean flag = false;
		try {
			String sql = "DELETE FROM deliveries WHERE id="+id;
			connection = (Connection) ConnectionUtil.openConnection();
			preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
			preparedStatement.executeUpdate();
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return flag;
	}

	@Override
	public Delivery_non_permanent getSingleDelivery(Integer id) {
		Delivery_non_permanent delivery_non_permanent = null;
		try {
			delivery_non_permanent = new Delivery_non_permanent();
			String sql = "SELECT * FROM deliveries WHERE id="+id;
			connection = (Connection) ConnectionUtil.openConnection();
			statement = (Statement) connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while(resultSet.next()) {
				delivery_non_permanent.setId(resultSet.getInt("id"));
				delivery_non_permanent.setSupplier_id(resultSet.getInt("supplier_id"));
				delivery_non_permanent.setDate(resultSet.getString("date"));
				delivery_non_permanent.setItem1(resultSet.getString("item1"));
				delivery_non_permanent.setItem1_costPer1(resultSet.getString("item1_costPer1"));
				delivery_non_permanent.setItem1_quantity(resultSet.getString("item1_quantity"));
				delivery_non_permanent.setItem2(resultSet.getString("item2"));
				delivery_non_permanent.setItem2_costPer1(resultSet.getString("item2_costPer1"));
				delivery_non_permanent.setItem2_quantity(resultSet.getString("item2_quantity"));
				delivery_non_permanent.setItem3(resultSet.getString("item3"));
				delivery_non_permanent.setItem3_costPer1(resultSet.getString("item3_costPer1"));
				delivery_non_permanent.setItem3_quantity(resultSet.getString("item3_quantity"));
				delivery_non_permanent.setTotal(resultSet.getInt("total"));
			}
		} catch (SQLException ex) {
			ex.printStackTrace();		
		}
		return delivery_non_permanent;
	}
}
