package com.controller.mm;

import java.io.IOException;
 

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.com.EmployeeLeaveForm;
 
import com.dao.com.EmployeeLeaveFormDao;
 

/**
 * Servlet implementation class EmployeeLeaveFormServlet
 */
@WebServlet("/EmployeeLeaveFormServlet")
public class EmployeeLeaveFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeLeaveFormServlet() {
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
		doGet(request, response);
		  request.setCharacterEncoding("UTF-8");
	//	String fullName = request.getParameter("fullname");
		//String Day = request.getParameter("Day");
		String Section_id = request.getParameter("Section_id");
		String Over_Time_Start_Time = request.getParameter("Over_Time_Start_Time");
		String Over_Time_End_Time = request.getParameter("Over_Time_End_Time");
		String Reason = request.getParameter("Reason");
	//	String customerinformation = request.getParameter("customerinformation");
		//long systemdatetime = request.getDateHeader("systemdatetime");
		//RegisterBean registerBean = new RegisterBean(password, password, password, password);
		EmployeeLeaveForm employeeleaveform=new EmployeeLeaveForm();
		//Using Java Beans - An easiest way to play with group of related data
		 
		 
		//registerBean.setSystemdatetime(systemdatetime);
		EmployeeLeaveFormDao employeeleaveformdao = new EmployeeLeaveFormDao();
		//The core Logic of the Registration application is present here. We are going to insert user data in to the database.
		String  employeeleave = employeeleaveformdao.employeeleave(employeeleaveform);
		if(employeeleave.equals("SUCCESS"))   //On success, you can display a message to user on Home page
		{
		 
		request.getRequestDispatcher("/addusersuccess.jsp").forward(request, response);

		}
		else   //On Failure, display a meaningful message to the User.
		{
		request.setAttribute("errMessage", employeeleave);
		request.getRequestDispatcher("/errorpage.jsp").forward(request, response);
		}
		}
		}