package controller.cn;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.log.LoginServlet;
import database.JDBCutils;
import database.cnDButils;
import database.khoaDButils;
import model.cnModel;
import model.khoaModel;

/**
 * Servlet implementation class editCNServlet
 */
@WebServlet("/editCNServlet")
public class editCNServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public editCNServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String errorString = null;
		String id = request.getParameter("code");
		cnModel cn = new cnModel();
		try {
			Connection con = JDBCutils.getConnection();
			cn = cnDButils.findCNById(id);
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("errorString", errorString);
		request.setAttribute("updateCN", cn);
		request.setAttribute("selectedd", cn.getKhoaFK().getMakhoa());
		System.out.println(cn.getKhoaFK().getMakhoa());
		List<khoaModel> list1 = new ArrayList<khoaModel>();
		try {
			Connection con = JDBCutils.getConnection();
			list1 = khoaDButils.selectAllKhoa(con);
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.setAttribute("khoaList", list1);
		request.getRequestDispatcher("/cn/updateCN.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Connection con = null; // connect SQL
		try {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			con = JDBCutils.getConnection();
			String macn = request.getParameter("macn");
			String tencn = request.getParameter("tencn");
			String khoaFK = request.getParameter("khoaFK");

			cnModel cn = new cnModel(macn, tencn, new khoaModel(khoaFK)); // tạo đối tượng
			// thêm đối tượng vào CSDL
			cnDButils.updateCN(cn);
			request.getRequestDispatcher("CNServlet").forward(request, response);
		} catch (ClassNotFoundException ex) {
			Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
		} catch (SQLException ex) {
			Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
		} finally {
			if (con != null) {
				try {
					con.close();
				} catch (SQLException ex) {
					Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
				}
			}
		}
		// doGet(request, response);
	}
}
