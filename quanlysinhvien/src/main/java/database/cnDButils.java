package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import controller.cn.newCNServlet;
import model.cnModel;
import model.khoaModel;

public class cnDButils {
	public static List<cnModel> selectAllCN(Connection con) throws SQLException {
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<cnModel> cnList = new ArrayList<cnModel>();
		try {
			ps = con.prepareStatement(
					"SELECT cn.*, khoa.makhoa AS makhoa, khoa.tenkhoa AS tenkhoa FROM cn JOIN khoa ON cn.makhoa = khoa.makhoa");
			rs = ps.executeQuery();
			cnModel cn;
			while (rs.next()) {
				cn = new cnModel(rs.getString("macn"), rs.getString("tencn"),
						new khoaModel(rs.getString("makhoa"), rs.getString("tenkhoa")));
				cnList.add(cn);
			}
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			// close resources (ps, con, rs) here
		}
		return cnList;
	}

	public static int insertCN(cnModel cn) throws SQLException, ClassNotFoundException {
		Connection con = null;
		int rows = 0;
		try {
			con = JDBCutils.getConnection();
			String sql = "INSERT INTO cn (macn, tencn, makhoa) VALUES (?, ?, ?)";

			PreparedStatement pstm = con.prepareStatement(sql);
			pstm.setString(1, cn.getMacn());
			pstm.setString(2, cn.getTencn());
			System.out.println(cn.getKhoaFK().getMakhoa());
			pstm.setString(3, cn.getKhoaFK().getMakhoa());
			rows = pstm.executeUpdate();
			System.out.println(rows);
		} finally {
			if (con != null) {
				try {
					con.close();
				} catch (SQLException ex) {
					Logger.getLogger(newCNServlet.class.getName()).log(Level.SEVERE, null, ex);
				}
			}
		}
		return rows;
	}

	public static List<khoaModel> selectAllKhoa(Connection con) throws SQLException {
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<khoaModel> khoaList = new ArrayList<khoaModel>();
		try {
			ps = con.prepareStatement("select * from khoa");
			rs = ps.executeQuery();
			khoaModel k;
			while (rs.next()) {
				k = new khoaModel(rs.getString("makhoa"), rs.getString("tenkhoa"));
				khoaList.add(k);

			}
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			if (ps != null)
				ps.close();
			if (con != null)
				con.close();
		}
		return khoaList;
	}

	public static khoaModel findKhoaById(String maKhoa) throws SQLException, ClassNotFoundException {
		Connection con = null;
		try {
			con = JDBCutils.getConnection();
			String sql = "Select * from khoa where makhoa=?";
			PreparedStatement pstm = con.prepareStatement(sql);
			pstm.setString(1, maKhoa);
			ResultSet rs = pstm.executeQuery();
			if (rs.next()) {
				khoaModel k = new khoaModel(rs.getString("makhoa"), rs.getString("tenkhoa"));
				return k;
			}
			return null;
		} finally {
			if (con != null) {
				try {
					con.close();
				} catch (SQLException ex) {
					Logger.getLogger(newCNServlet.class.getName()).log(Level.SEVERE, null, ex);
				}
			}
		}
	}

	public static cnModel findCNById(String macn) throws SQLException, ClassNotFoundException {
		Connection con = null;
		try {
			con = JDBCutils.getConnection();
			String sql = "Select * from cn where macn=?";
			PreparedStatement pstm = con.prepareStatement(sql);
			pstm.setString(1, macn);
			ResultSet rs = pstm.executeQuery();
			if (rs.next()) {
				khoaModel khoaModel = findKhoaById(rs.getString("makhoa"));
				cnModel k = new cnModel(rs.getString("macn"), rs.getString("tencn"),khoaModel );
				return k;
			}
			return null;
		} finally {
			if (con != null) {
				try {
					con.close();
				} catch (SQLException ex) {
					Logger.getLogger(newCNServlet.class.getName()).log(Level.SEVERE, null, ex);
				}
			}
		}
	}

	public static void updateCN(cnModel cn) throws SQLException, ClassNotFoundException {
		Connection con = null;
		try {
			con = JDBCutils.getConnection();
			String sql = "UPDATE cn SET macn=?, tencn=? , makhoa=? WHERE macn=?";
			PreparedStatement pstm = con.prepareStatement(sql);
			pstm.setString(1, cn.getMacn());
			pstm.setString(2, cn.getTencn());
			pstm.setString(3, cn.getKhoaFK().getMakhoa());
			pstm.setString(4, cn.getMacn());
			pstm.executeUpdate();
		} finally {
			if (con != null) {
				try {
					con.close();
				} catch (SQLException ex) {
					Logger.getLogger(newCNServlet.class.getName()).log(Level.SEVERE, null, ex);
				}
			}
		}
	}

	public static void deleteCNById(Connection con, String macn) throws SQLException {
		String sql = "delete from cn where macn=?";
		PreparedStatement pstm = con.prepareStatement(sql);
		pstm.setString(1, macn);
		pstm.executeUpdate();
	}

}
