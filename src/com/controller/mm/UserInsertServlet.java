package com.controller.mm;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.com.RegisterBean;
import com.dao.com.InsertUsersDao;
import com.dao.com.RegisterDao;

/**
 * Servlet implementation class UserInsertServlet
 */
@WebServlet("/UserInsertServlet")
public class UserInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserInsertServlet() {
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
		// TODO Auto-generated method stub
		String fullName = request.getParameter("fullname");
		String email = request.getParameter("email");
		//String address = request.getParameter("address");
		//String phonenumber = request.getParameter("phonenumber");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		//String customerinformation = request.getParameter("customerinformation");
		//long systemdatetime = request.getDateHeader("systemdatetime");
		//RegisterBean registerBean = new RegisterBean(password, password, password, password);
		RegisterBean registerBean=new RegisterBean();
		//Using Java Beans - An easiest way to play with group of related data
		registerBean.setFullName(fullName);
		registerBean.setEmail(email);
		//registerBean.setAddress(address);
		// registerBean.setPhonenumber(phonenumber);
		registerBean.setUsername(username);
		registerBean.setPassword(password); 
		//registerBean.setCustomerinformation(customerinformation); 
		//registerBean.setSystemdatetime(systemdatetime);
		InsertUsersDao registerDao = new InsertUsersDao();
		//The core Logic of the Registration application is present here. We are going to insert user data in to the database.
		String userRegistered = registerDao.registerUser(registerBean);
		if(userRegistered.equals("SUCCESS"))   //On success, you can display a message to user on Home page
		{
		 
		request.getRequestDispatcher("/insertcustomersuccess.jsp").forward(request, response);

		}
		else   //On Failure, display a meaningful message to the User.
		{
		request.setAttribute("errMessage", userRegistered);
		request.getRequestDispatcher("/insertcustomer.jsp").forward(request, response);
		}
		}
		}