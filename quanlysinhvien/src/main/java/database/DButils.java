package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.cj.xdevapi.Result;

import model.UserAccount;

public class DButils {

	public static UserAccount findUser(Connection con, String userName, String password) throws SQLException{
		
		String sql = "select a.Username, a.Password from user_account a where a.Username=? and a.password=?";
		
		PreparedStatement pstm = con.prepareStatement(sql);
		pstm.setString(1, userName);
		pstm.setString(2, password);
		ResultSet rs = pstm.executeQuery();
		
		if(rs.next()) {
			UserAccount user = new UserAccount();
			user.setUserName(userName);
			user.setPassword(password);
			return user;
		}
		return null;
	}
	
	public static UserAccount findUser(Connection con, String userName) throws SQLException{
		
		String sql = "select a.Username, a.Password from user_account a" + "where a.Username=? and a.password=?";
		
		PreparedStatement pstm = con.prepareStatement(sql);
		pstm.setString(1, userName);
		ResultSet rs = pstm.executeQuery();
		
		if(rs.next()) {
			String password = rs.getString("Password");
			UserAccount user = new UserAccount();
			user.setUserName(userName);
			user.setPassword(password);
			return user;
		}
		return null;
	}

public static void insertAccount(Connection con, UserAccount user) throws SQLException{
		String sql = "insert into user_account(Username, Password) values(?,?)";
		 
		PreparedStatement pstm = con.prepareStatement(sql);
		pstm.setString(1, user.getUserName());
		pstm.setString(2, user.getPassword());
		
		pstm.executeUpdate();
	}
}
