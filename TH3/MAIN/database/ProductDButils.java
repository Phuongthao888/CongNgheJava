package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.xdevapi.Result;

import model.ProductModel;

public class ProductDButils {
	public static List<ProductModel> selectAllProduct(Connection con) throws SQLException{
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<ProductModel> productList = new ArrayList<ProductModel>();
		try {
			ps = con.prepareStatement("select * from product");
			rs = ps.executeQuery();
			ProductModel pro;
			while(rs.next()) {
				pro = new ProductModel(rs.getInt("ID"), rs.getString("Name"), rs.getString("Type"), rs.getInt("Price"), rs.getString("Image"));
				productList.add(pro);
				
			}
		}catch(Exception e){
			System.out.println(e);
		}finally {
			if(ps!=null)
				ps.close();
			if(con!=null)
				con.close();
		}
		return productList;
	}
}
