package com.dao.com;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.bean.com.RegisterBean;

public class InsertUsersDao {

	 public String registerUser(RegisterBean registerBean)
	 {
		 
	 String fullName = registerBean.getFullName();
	 String email = registerBean.getEmail();
	 //String address=registerBean.getAddress();
	// String phonenumber=registerBean.getPhonenumber();
	 String username = registerBean.getUsername();
	 String password = registerBean.getPassword();
	 //String customerinformation = registerBean.getCustomerinformation();
	 Connection con = null;
	 PreparedStatement preparedStatement = null;
	 try
	 {
	 con = DBConnection.createConnection();
	 String query = "insert into customers (fullName,email,username,password) values (?,?,?,?)"; //Insert user details into the table 'USERS'
	 preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
	 
	 preparedStatement.setString(1, fullName);
	 preparedStatement.setString(2, email);
	// preparedStatement.setString(3, address);
	// preparedStatement.setString(4, phonenumber);
	 preparedStatement.setString(3, username);
	 preparedStatement.setString(4, password);
	// preparedStatement.setString(7, customerinformation);
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
