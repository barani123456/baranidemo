package com.dao.com;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


import com.bean.com.EmployeeLeaveForm;
 

public class EmployeeLeaveFormDao {
	
	 public String employeeleave(EmployeeLeaveForm employeeLeaveForm)
	 {
		 
	 //java.sql.Date Day = (java.sql.Date) employeeLeaveForm.getDay();
	 int Section_id = employeeLeaveForm.getSection_id();
	 String Over_Time_Start_Time=employeeLeaveForm.getOver_Time_Start_Time();
	 String Over_Time_End_Time=employeeLeaveForm.getOver_Time_End_Time();
	 String Reason = employeeLeaveForm.getReason();
	 	Connection con = null;
	 PreparedStatement preparedStatement = null;
	 try
	 {
	 con = DBConnection.createConnection();
	 String query = "insert into employeesleaveform(Section_id,Over_Time_Start_Time,Over_Time_End_Time,Reason) values (?,?,?,?)"; //Insert user details into the table 'USERS'
	 preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
 
	 //preparedStatement.setDate(1,Day);
	 preparedStatement.setInt(1, Section_id);
	 preparedStatement.setString(2, Over_Time_Start_Time);
	 preparedStatement.setString(3, Over_Time_End_Time);
	 preparedStatement.setString(4, Reason);
	 int i= preparedStatement.executeUpdate();
	 
	 if (i!=0)  //Just to ensure data has been inserted into the database
		return "SUCCESS"; 
	 }
	 catch(SQLException e)
	 {
	 e.printStackTrace();
	 }
	 
	 return "Oops.. Something went wrong there..!";  // On failure, send a message from here.
	 }
	}
