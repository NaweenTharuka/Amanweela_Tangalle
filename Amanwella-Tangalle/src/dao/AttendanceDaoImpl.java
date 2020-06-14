package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;

import DBConnection.ConnectionUtil;
import entity.Attendance;

public  class AttendanceDaoImpl implements AttendanceDao {
	
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	PreparedStatement preparedStatement = null;
	

	public boolean save(Attendance a) {
		boolean flag = false;
			try {
				String sql = "INSERT INTO attendance(date, staffid, intime, outtime,whours,ehours)VALUES('"+a.getDate()+"', '"+a.getStaffid()+"', '"+a.getIntime()+"', '"+a.getOuttime()+"', '"+a.getWhours()+"', '"+a.getEhours()+"')";
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
		public List<Attendance> get() {
			List<Attendance> list = null;
			Attendance attendance = null;
			// TODO Auto-generated method stub
				try {
					list = new ArrayList<Attendance>();
					String sql = "SELECT * FROM attendance";
					connection = (Connection) ConnectionUtil.openConnection();
					statement = (Statement) connection.createStatement();
					resultSet = statement.executeQuery(sql);

					while (resultSet.next()) {
						attendance = new Attendance();
						attendance.setId(resultSet.getInt("id"));
						attendance.setDate(resultSet.getString("date"));
						attendance.setStaffid(resultSet.getInt("staffid"));
						attendance.setIntime(resultSet.getString("intime"));
						attendance.setOuttime(resultSet.getString("outtime"));
						attendance.setWhours(resultSet.getString("whours"));
						attendance.setEhours(resultSet.getString("ehours"));

			
			
						list.add(attendance);
					}
				} 
				catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				}
				return list;
}
		@Override
		public Attendance get(int id) {
			Attendance attendance = null;
			try {
				attendance = new Attendance();
				String sql = "SELECT * FROM attendance WHERE id="+id;
				connection = (Connection) ConnectionUtil.openConnection();
				statement = (Statement) connection.createStatement();
				resultSet = statement.executeQuery(sql);
				while(resultSet.next()) {
					attendance.setId(resultSet.getInt("id"));
					attendance.setDate(resultSet.getString("date"));
					attendance.setStaffid(resultSet.getInt("staffid"));
					attendance.setIntime(resultSet.getString("intime"));
					attendance.setOuttime(resultSet.getString("outtime"));
					attendance.setWhours(resultSet.getString("whours"));
					attendance.setEhours(resultSet.getString("ehours"));
					
			
				}
			}
			 catch (SQLException ex) {
				ex.printStackTrace();		
			}
			return attendance;
		}

		@Override
		public boolean update(Attendance a) {
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