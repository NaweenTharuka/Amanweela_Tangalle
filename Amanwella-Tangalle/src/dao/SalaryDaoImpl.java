package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;

import DBConnection.ConnectionUtil;
import entity.Salary;


public class SalaryDaoImpl implements SalaryDao {
	
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	PreparedStatement preparedStatement = null;
	
	
	public boolean save(Salary s) {
		boolean flag = false;
		try {
			String sql = "INSERT INTO salary(staffid, month, bsalary, transport, allowance, ot, totsalary)VALUES('"+s.getStaffid()+"', '"+s.getMonth()+"', '"+s.getBsalary()+"', '"+s.getTransport()+"','"+s.getAllowance()+"' , '"+s.getOt()+"', '"+s.getTotsalary()+"')";
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
	public List<Salary> get() {
		List<Salary> list = null;
		Salary salary = null;
		
		try {
			list = new ArrayList<Salary>();
			String sql = "SELECT * FROM salary";
			connection = (Connection) ConnectionUtil.openConnection();
			statement = (Statement) connection.createStatement();
			resultSet = statement.executeQuery(sql);
			
			while (resultSet.next()) {
				salary = new Salary();
				salary.setId(resultSet.getInt("id"));
				salary.setStaffid(resultSet.getInt("staffid"));
				salary.setMonth(resultSet.getString("month"));
				salary.setBsalary(resultSet.getString("bsalary"));
				salary.setTransport(resultSet.getString("transport"));
				salary.setAllowance(resultSet.getString("allowance"));
				salary.setOt(resultSet.getString("ot"));
				salary.setTotsalary(resultSet.getInt("totsalary"));
				
				list.add(salary);
		
			}
		}
		
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return list;
	}



	@Override
	public Salary get(int id) {
		Salary salary = null;
		try {
			salary = new Salary();
			String sql = "SELECT * FROM salary WHERE id="+id;
			connection = (Connection) ConnectionUtil.openConnection();
			statement = (Statement) connection.createStatement();
			resultSet = statement.executeQuery(sql);
			
			while(resultSet.next()) {
				salary.setId(resultSet.getInt("id"));
				salary.setStaffid(resultSet.getInt("staffid"));
				salary.setMonth(resultSet.getString("month"));
				salary.setBsalary(resultSet.getString("bsalary"));
				salary.setTransport(resultSet.getString("transport"));
				salary.setAllowance(resultSet.getString("allowance"));
				salary.setOt(resultSet.getString("ot"));
				salary.setTotsalary(resultSet.getInt("totsalary"));
			}
		}
		 catch (SQLException ex) {
				ex.printStackTrace();		
			}
		return salary;
	}




	@Override
	public boolean update(Salary s) {
		boolean flag = false;
		try {
			String sql = "UPDATE salary SET staffid='"+s.getStaffid()+"', month='"+s.getMonth()+"',bsalary='"+s.getBsalary()+"',transport='"+s.getTransport()+"',allowance='"+s.getAllowance()+"',ot='"+s.getOt()+"',totsalary='"+s.getTotsalary()+"', WHERE id="+s.getId();
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
		// TODO Auto-generated method stub
		return false;
	}




	@Override
	public String message() {
		// TODO Auto-generated method stub
		return null;
	}

}
