package dao;

import java.sql.ResultSet;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import DBConnection.ConnectionUtil;
import entity.Login;

public class LoginDaoImpl implements LoginDao{

	@Override
	public String authenticate(Login login) {
		String sql = "SELECT * FROM admin WHERE username=? and password=?";
		try {
			Connection connection = (Connection) ConnectionUtil.openConnection();
			PreparedStatement ps = (PreparedStatement) connection.prepareStatement(sql);
			ps.setString(1, login.getUsername());
			ps.setString(2, login.getPassword());
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				return "true";
			} else {
				return "false";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "error";
	}

}
