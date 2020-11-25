package com.controller.mm;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		 	// Connect to mysql and verify username password
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			// loads driver
			Connection c = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/mysql?characterEncoding=UTF-8&serverTimezone=JST", "root", "password"); // gets
																															// a
																															// new
																															// connection
			PreparedStatement ps = c
					.prepareStatement("select username,password from users where username=? and password=?");
			ps.setString(1, username);
			ps.setString(2, password);

			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				username = rs.getString("username"); //fetch the values present in database
				password = rs.getString("password");
				 HttpSession session = request.getSession();
			      session.setAttribute("username", username);
			 if (username.isEmpty() || password.isEmpty()) {
					RequestDispatcher req = request.getRequestDispatcher("error.jsp");
					req.include(request, response);
				} 
				 else {
					RequestDispatcher req = request.getRequestDispatcher("menu.jsp");
					req.forward(request, response);
				}
			}

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
