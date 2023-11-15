package swing;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
public class CSDL {
		private static Connection getConnection() throws
		ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/quanlysanpham","root","");
		return conn;
		}
		public List<spModel> getProduct() throws
		SQLException{
		Connection cnn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		List<spModel> productList=new
		ArrayList<spModel>();
		try {
		cnn=this.getConnection();
		String sql="Select * from SanPham";
		ps=cnn.prepareStatement(sql);
		rs=ps.executeQuery();
		while(rs.next()) {
		productList.add(new
		spModel(rs.getString(1),rs.getString(2),rs.getInt(3),rs.
		getString(4),rs.getString(5)));
		}
		return productList;
		}catch(Exception e) {
		System.out.print(e);
		}
		finally {
		if(ps!=null)
		ps.close();
		if(cnn!=null)
		cnn.close();
		}
		return null;
}}
