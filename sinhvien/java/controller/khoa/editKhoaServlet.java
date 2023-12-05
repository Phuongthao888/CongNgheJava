package controller.khoa;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.log.LoginServlet;
import database.JDBCutils;
import database.khoaDButils;
import model.khoaModel;

/**
 * Servlet implementation class editKhoaServlet
 */
	@MultipartConfig(
	fileSizeThreshold = 1024 * 1024 * 10,
	maxFileSize = 1024 * 1024 * 50,
	maxRequestSize = 1024 * 1024 * 100
	)

@WebServlet("/editKhoaServlet")
public class editKhoaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public editKhoaServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.getWriter().append("Served at: ").append(request.getContextPath());
				String errorString = null;
				String id =request.getParameter("makhoa");
				khoaModel khoa= new khoaModel();
				try {
				Connection con = JDBCutils.getConnection();
				khoa = khoaDButils.findKhoaById(id);
				} catch (SQLException e) {
				e.printStackTrace();
				} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				}
				request.setAttribute("errorString",errorString);
				request.setAttribute("updateKhoa", khoa);
				request.getRequestDispatcher("/updateKhoa.jsp").forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection con = null; //connect SQL
		try {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			con = JDBCutils.getConnection();
			String makhoa = request.getParameter("makhoa");
			String tenkhoa = request.getParameter("tenkhoa");
			System.out.println(tenkhoa);
			System.out.println(makhoa);
			khoaModel k = new khoaModel(makhoa, tenkhoa); //tạo đối tượng
			//thêm đối tượng vào CSDL
			khoaDButils.updateKhoa(k);
			request.getRequestDispatcher("/updateKhoa.jsp").forward(request,response);
		} catch (ClassNotFoundException ex) {
			Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null,ex);
					} catch (SQLException ex) {
						Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null,ex);
					}finally{
						if(con != null){
						try {
							con.close();
					} catch (SQLException ex) {
						Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE,null, ex);
					}
					}
					}
					//doGet(request, response);
					}
		
	}


