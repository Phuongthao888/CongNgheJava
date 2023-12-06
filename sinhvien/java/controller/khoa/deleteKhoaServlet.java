package controller.khoa;

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

import controller.log.LoginServlet;
import database.JDBCutils;
import database.khoaDButils;

/**
 * Servlet implementation class deleteKhoaServlet
 */
@WebServlet("/deleteKhoaServlet")
public class deleteKhoaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteKhoaServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection con = null;
        try {
            request.setCharacterEncoding("utf-8");
            response.setCharacterEncoding("utf-8");
            con = JDBCutils.getConnection();

            // Lấy giá trị ID từ yêu cầu
            String makhoa = request.getParameter("makhoa");

            // Gọi phương thức delete từ khoaDButils
            khoaDButils.deleteKhoaById(con, makhoa);

            // Chuyển hướng về trang hiển thị danh sách sau khi xóa
            response.sendRedirect(request.getContextPath() + "/khoaServlet");
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
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("khoaServlet").forward(request,response);
	}

}
