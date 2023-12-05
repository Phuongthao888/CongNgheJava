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
 * Servlet implementation class newKhoaServlet
 */
@MultipartConfig(
		fileSizeThreshold = 1024 * 1024 * 10,
		maxFileSize = 1024 * 1024 * 50,
		maxRequestSize = 1024 * 1024 * 100
		)

@WebServlet("/newKhoaServlet")
public class newKhoaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String UPLOAD_DIR = "Images";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public newKhoaServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
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
			String makhoa =request.getParameter("makhoa");
			String tenkhoa =request.getParameter("tenkhoa");
			khoaModel k =new khoaModel(makhoa, tenkhoa); //tạo đối tượng
			//thêm đối tượng vào CSDL
			khoaDButils.insertKhoa(k);
			request.getRequestDispatcher("khoaServlet").forward(request,response);
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


