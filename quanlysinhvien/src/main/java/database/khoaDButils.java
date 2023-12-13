package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import controller.khoa.newKhoaServlet;
import model.khoaModel;

public class khoaDButils {
	public static List<khoaModel> selectAllKhoa(Connection con) throws SQLException{
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<khoaModel> khoaList = new ArrayList<khoaModel>();
		try {
			ps = con.prepareStatement("select * from khoa");
			rs = ps.executeQuery();
			khoaModel k;
			while(rs.next()) {
				k = new khoaModel(rs.getString("makhoa"), rs.getString("tenkhoa"));
				khoaList.add(k);
				
			}
		}catch(Exception e){
			System.out.println(e);
		}finally {
			if(ps!=null)
				ps.close();
			if(con!=null)
				con.close();
		}
		return khoaList;
	}
	
	public static khoaModel findKhoaById(String makhoa) throws SQLException, ClassNotFoundException {
		Connection con = null;
		try{
				con = JDBCutils.getConnection();
				String sql = "Select * from khoa where makhoa=?";
				PreparedStatement pstm = con.prepareStatement(sql);
				pstm.setString(1, makhoa);
				ResultSet rs = pstm.executeQuery();
				if (rs.next()) {
				khoaModel k = new khoaModel(rs.getString("makhoa"),rs.getString("tenkhoa"));
				return k;
			}
			return null;
		}finally{
			if(con != null){
			try {
				con.close();
		} catch (SQLException ex) {
			Logger.getLogger(newKhoaServlet.class.getName()).log(Level.SEVERE,null, ex);
			}
			} }
			}
	
	
	
	public static int insertKhoa(khoaModel khoa) throws SQLException, ClassNotFoundException {
		Connection con = null;
		int rows=0;
		try{
			con = JDBCutils.getConnection();
			String sql = "Insert into khoa(makhoa, tenkhoa) values (?,?)";
			PreparedStatement pstm = con.prepareStatement(sql);
			pstm.setString(1, khoa.getMakhoa());
			pstm.setString(2, khoa.getTenkhoa());
			rows=pstm.executeUpdate();
		}finally{
			if(con != null){
			try {
			con.close();
			} catch (SQLException ex) {
			Logger.getLogger(newKhoaServlet.class.getName()).log(Level.SEVERE,null, ex);
			}
			} }
			return rows;
	}
	
	public static void updateKhoa(khoaModel khoa) throws SQLException, ClassNotFoundException {
			Connection con = null;
			try{
				con = JDBCutils.getConnection();
				String sql = "UPDATE khoa SET makhoa=?, tenkhoa=? WHERE makhoa=?";
				PreparedStatement pstm = con.prepareStatement(sql);
				pstm.setString(1, khoa.getMakhoa());
				pstm.setString(2, khoa.getTenkhoa());
				pstm.setString(3, khoa.getMakhoa());
				pstm.executeUpdate();
			}finally{
			if(con != null){
			try {
				con.close();
			} catch (SQLException ex) {
			Logger.getLogger(newKhoaServlet.class.getName()).log(Level.SEVERE,null, ex);
			}
			} }
			}
	
		public static void deleteKhoaById(Connection con,String makhoa) throws SQLException {
				String sql="delete from khoa where makhoa=?";
				PreparedStatement pstm =
				con.prepareStatement(sql);
				pstm.setString(1, makhoa);
				pstm.executeUpdate();
				}
}
