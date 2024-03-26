package controller.log;

import java.io.IOException;
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
 * Servlet implementation class SignupServlet
 */
@WebServlet(name= "/SignupServlet", urlPatterns = {"/SignupServlet"})
public class SignupServlet extends HttpServlet {
	Connection con = null;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect(request.getContextPath() + "/log/Signup.jsp");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			con = JDBCutils.getConnection();
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			
			UserAccount usr = new UserAccount(username, password);
			
			DButils.insertAccount(con, usr);
			request.setAttribute("username", username);
			request.getRequestDispatcher("log/Login.jsp").forward(request, response);
			
		}catch(SQLException ex) {
			ex.printStackTrace();
			request.setAttribute("errorString", "");
			// Forward to an error page or handle the error accordingly
			request.getRequestDispatcher("/error/errorSignup.jsp").forward(request, response);
		}finally {
			if(con!=null) {
				try {
					con.close();
				}catch (Exception e) {
					Logger.getLogger(SignupServlet.class.getName()).log(Level.SEVERE,null,e);
				}
			}
		}
	}

}
