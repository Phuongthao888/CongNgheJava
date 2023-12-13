package controller.log;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.DButils;
import database.JDBCutils;
import model.UserAccount;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect(request.getContextPath() + "/log/Login.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection con;
		try {
			con = JDBCutils.getConnection();
			String username = request.getParameter("Username");
			String password = request.getParameter("Password");
			UserAccount usr = new UserAccount(username,password);
			UserAccount u = DButils.findUser(con, usr.getUserName(),usr.getPassword());
			
			
			if(u != null) {
				UserAccount user = new UserAccount(u);
				request.setAttribute("Username", "Chào bạn: " +user.getUserName());
				request.getRequestDispatcher("/index.jsp").forward(request, response);
			}
			else {
				request.getRequestDispatcher("/error/errorLog.jsp").forward(request, response);
				}
			
		}catch(SQLException ex) {
			Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
		}
	}

}
