package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;

import DBConnection.ConnectionUtil;
import entity.Inventory;
import entity.InventoryCustomerItemQuantity;
import entity.InventoryLiquorQuantity;
import entity.InventoryQuantity;
import entity.Reservation;


public class InventoryDaoImpl implements InventoryDao{
	
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	PreparedStatement preparedStatement = null;
	
	@Override
	public boolean save(Inventory i) {
		boolean flag = false;
		try {
			String sql = "INSERT INTO inventory(date, room_id, your_name, adults, item_quantity, liquor_quantity, extra_item, liquor)VALUES('"+i.getDate()+"', '"+i.getRoom_id()+"', '"+i.getYour_name()+"', '"+i.getAdults()+"', '"+i.getItem_quantity()+"', '"+i.getLiquor_quantity()+"', '"+i.getExtra_item()+"', '"+i.getLiquor()+"')";
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
			String sql = "SELECT MAX(id) as id FROM inventory";
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
	public boolean Delete(int id) {
		boolean flag = false;
		try {
			String sql = "DELETE FROM inventory WHERE id='"+id+"'";
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
	public boolean Update(int id, Inventory r) {
		boolean flag = false;
		try {
			String sql = "UPDATE inventory SET date='"+r.getDate()+"',room_id='"+r.getRoom_id()+"', your_name='"+r.getYour_name()+"', adults='"+r.getAdults()+"', item_quantity='"+r.getItem_quantity()+"', liquor_quantity='"+r.getLiquor_quantity()+"', extra_item='"+r.getExtra_item()+"', liquor='"+r.getLiquor()+"' "+
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
	public List<InventoryCustomerItemQuantity> get_item() {
		List<InventoryCustomerItemQuantity> list = null;
		InventoryCustomerItemQuantity inventoryCustomerItemQuantity = null;
		// TODO Auto-generated method stub
		try {
			list = new ArrayList<InventoryCustomerItemQuantity>();
			String sql = "SELECT * FROM item_quantity";
			connection = (Connection) ConnectionUtil.openConnection();
			statement = (Statement) connection.createStatement();
			resultSet = statement.executeQuery(sql);

			while (resultSet.next()) {
				inventoryCustomerItemQuantity = new InventoryCustomerItemQuantity();
				inventoryCustomerItemQuantity.setId(resultSet.getInt("id"));
				inventoryCustomerItemQuantity.setItem(resultSet.getString("item"));
				inventoryCustomerItemQuantity.setCount(resultSet.getInt("count"));

				list.add(inventoryCustomerItemQuantity);
			}
		} 
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<InventoryLiquorQuantity> get_liquor() {
		List<InventoryLiquorQuantity> list = null;
		InventoryLiquorQuantity inventoryLiquorQuantity = null;
		// TODO Auto-generated method stub
		try {
			list = new ArrayList<InventoryLiquorQuantity>();
			String sql = "SELECT * FROM liquor_quantity";
			connection = (Connection) ConnectionUtil.openConnection();
			statement = (Statement) connection.createStatement();
			resultSet = statement.executeQuery(sql);

			while (resultSet.next()) {
				inventoryLiquorQuantity = new InventoryLiquorQuantity();
				inventoryLiquorQuantity.setId(resultSet.getInt("id"));
				inventoryLiquorQuantity.setItem(resultSet.getString("item"));
				inventoryLiquorQuantity.setQuantity(resultSet.getInt("quantity"));

				list.add(inventoryLiquorQuantity);
			}
		} 
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<InventoryQuantity> get_quantity() {
		List<InventoryQuantity> list = null;
		InventoryQuantity inventoryQuantity = null;
		// TODO Auto-generated method stub
		try {
			list = new ArrayList<InventoryQuantity>();
			String sql = "SELECT * FROM inventory_quantity";
			connection = (Connection) ConnectionUtil.openConnection();
			statement = (Statement) connection.createStatement();
			resultSet = statement.executeQuery(sql);

			while (resultSet.next()) {
				inventoryQuantity = new InventoryQuantity();
				inventoryQuantity.setId(resultSet.getInt("id"));
				inventoryQuantity.setCustomer_id(resultSet.getInt("customer_id"));
				inventoryQuantity.setItem(resultSet.getString("item"));
				inventoryQuantity.setItem_count(resultSet.getInt("item_count"));
				inventoryQuantity.setLiquor(resultSet.getString("liquor"));
				inventoryQuantity.setLiquor_count(resultSet.getInt("liquor_count"));

				list.add(inventoryQuantity);
			}
		} 
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public int FindItemCount(String item) {
		try {
			String sql = "SELECT item_count FROM inventory_quantity WHERE item='"+item+"'";
			connection = (Connection) ConnectionUtil.openConnection();
			statement = (Statement) connection.createStatement();
			resultSet = statement.executeQuery(sql);

			while (resultSet.next()) {
			    return resultSet.getInt("item_count");	
			}	
		} catch (SQLException e) {
			e.printStackTrace();
		}	
		return -1;
	}

	@Override
	public int FindLiquorCount(String liquor) {
		try {
			String sql = "SELECT liquor_count FROM inventory_quantity WHERE liquor='"+liquor+"'";
			connection = (Connection) ConnectionUtil.openConnection();
			statement = (Statement) connection.createStatement();
			resultSet = statement.executeQuery(sql);

			while (resultSet.next()) {
			    return resultSet.getInt("liquor_count");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return -1;
	}

	@Override
	public boolean UpdateItemQuantity(String item, int quantity) {
		boolean flag = false;
		try {
			String sql = "UPDATE inventory_quantity SET item_count='"+(FindItemCount(item)-quantity)+"'"+"WHERE item='"+item+"'";
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
	public boolean UpdateLiquorQuantity(String liquor, int quantity) {
		boolean flag = false;
		try {
			String sql = "UPDATE inventory_quantity SET liquor_count='"+(FindLiquorCount(liquor)-quantity)+"'"+"WHERE liquor='"+liquor+"'";
			
			
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
	public List<Inventory> get_inventory() {
		List<Inventory> list = null;
		Inventory inventory = null;
		// TODO Auto-generated method stub
		try {
			list = new ArrayList<Inventory>();
			String sql = "SELECT * FROM inventory";
			connection = (Connection) ConnectionUtil.openConnection();
			statement = (Statement) connection.createStatement();
			resultSet = statement.executeQuery(sql);

			while (resultSet.next()) {
				inventory = new Inventory();
				inventory.setId(resultSet.getInt("id"));
				inventory.setDate(resultSet.getString("date"));
				inventory.setRoom_id(resultSet.getString("room_id"));
				inventory.setYour_name(resultSet.getString("your_name"));
				inventory.setAdults(resultSet.getString("adults"));
				inventory.setItem_quantity(resultSet.getString("item_quantity"));
				inventory.setLiquor_quantity(resultSet.getString("liquor_quantity"));
				inventory.setExtra_item(resultSet.getString("extra_item"));
				inventory.setLiquor(resultSet.getString("liquor"));
							
				list.add(inventory);
			}
		} 
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
}
