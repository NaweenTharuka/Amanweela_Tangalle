package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;

import DBConnection.ConnectionUtil;
import entity.Leaves;

public class LeavesDaoImpl implements LeavesDao{
	
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	PreparedStatement preparedStatement = null;

	
	@Override
	public boolean save(Leaves l) {
		boolean flag = false;
		try {
			String sql = "INSERT INTO leaves(staffid, sdate, edate, nleaves,rleaves)VALUES('"+l.getStaffid()+"', '"+l.getSdate()+"', '"+l.getEdate()+"', '"+l.getNleaves()+"', '"+l.getRleaves()+"')";
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
	public List<Leaves> get() {
		List<Leaves> list = null;
		Leaves leaves = null;
		
		try {
			list = new ArrayList<Leaves>();
			String sql = "SELECT * FROM leaves";
			connection = (Connection) ConnectionUtil.openConnection();
			statement = (Statement) connection.createStatement();
			resultSet = statement.executeQuery(sql);

			while (resultSet.next()) {
				leaves = new Leaves();
				leaves.setId(resultSet.getInt("id"));
				leaves.setStaffid(resultSet.getInt("staffid"));
				leaves.setSdate(resultSet.getString("sdate"));
				leaves.setEdate(resultSet.getString("edate"));
				leaves.setNleaves(resultSet.getString("nleaves"));
				leaves.setRleaves(resultSet.getString("rleaves"));

	
	
				list.add(leaves);
			}
		} 
		catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		}
		return list;
		
		
	}

	@Override
	public Leaves get(int id) {
		Leaves leaves = null;
		try {
			leaves  = new Leaves();
			String sql = "SELECT * FROM leaves WHERE id="+id;
			connection = (Connection) ConnectionUtil.openConnection();
			statement = (Statement) connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while(resultSet.next()) {
				leaves.setId(resultSet.getInt("id"));
				leaves.setStaffid(resultSet.getInt("staffid"));
				leaves.setSdate(resultSet.getString("sdate"));
				leaves.setEdate(resultSet.getString("edate"));
				leaves.setNleaves(resultSet.getString("nleaves"));
				leaves.setRleaves(resultSet.getString("rleaves"));
		
			}
		}
		 catch (SQLException ex) {
			ex.printStackTrace();		
		}
		return leaves;
	}

	@Override
	public boolean update(Leaves l) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public String message() {
		// TODO Auto-generated method stub
		return null;
	}

}
