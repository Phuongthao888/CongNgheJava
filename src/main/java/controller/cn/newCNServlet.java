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
 * Servlet implementation class newCNServlet
 */
@WebServlet("/newCNServlet")
public class newCNServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public newCNServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	List<khoaModel> list1 = new ArrayList<khoaModel>();
			try {
				Connection con = JDBCutils.getConnection();
				list1 = khoaDButils.selectAllKhoa(con);
			}catch(Exception e) {
				e.printStackTrace();
			}
			request.setAttribute("khoaList", list1);
			request.getRequestDispatcher("/cn/addCN.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = null; //connect SQL
		try {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			conn = JDBCutils.getConnection();
			//xử lý tham số từ form
			String macn =request.getParameter("macn");
			String tencn =request.getParameter("tencn");
			String khoaFK =request.getParameter("khoaFK");
			
			cnModel cn =new cnModel(macn, tencn, new khoaModel(khoaFK)); //tạo đối tượng
			//thêm đối tượng vào CSDL
			cnDButils.insertCN(cn);
			
			response.sendRedirect(request.getContextPath() + "/CNServlet");
		}catch (SQLException ex) {
			Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null,ex);
		} catch (ClassNotFoundException ex) {
			Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null,ex);
		}finally{
			if(conn != null){
			try {
				conn.close();
			} catch (SQLException ex) {
				Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE,null, ex);
		}
		}
		}
		}


}
