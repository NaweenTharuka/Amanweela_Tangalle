package dao;

import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import DBConnection.ConnectionUtil;
import entity.Delivery_items;

public class DeliveryItemDaoImpl implements DeliveryItemDao  {
	
	Connection connection;
	PreparedStatement preparedStatement;

	@Override
	public boolean save(Delivery_items di) {
		boolean flag = false;
		try {
			String sql = "INSERT INTO delivery_items(delivery_id, date, item, cost_per_one, quantity, total_cost)VALUES('"+di.getDelivery_id()+"', '"+di.getDate()+"', '"+di.getItem()+"', '"+di.getCost_per_one()+"', '"+di.getQuantity()+"', '"+di.getTotal_cost()+"')";
			connection = (Connection) ConnectionUtil.openConnection();
			preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
			preparedStatement.executeUpdate();
			flag = true;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}

}
