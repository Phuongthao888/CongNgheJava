package controller;

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
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			con = JDBCutils.getConnection();
			String username = request.getParameter("username");
			String gender = request.getParameter("gender");
			String password = request.getParameter("password");
			
			UserAccount usr = new UserAccount(username, gender, password);
			
			DButils.insertAccount(con, usr);
			request.setAttribute("username", username);
			request.getRequestDispatcher("/Signup.jsp").forward(request, response);
			
		}catch(SQLException ex) {
			Logger.getLogger(SignupServlet.class.getName()).log(Level.SEVERE,null,ex);
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
