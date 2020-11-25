<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.util.*" %>
<%
String id = request.getParameter("SINo");
String driver = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/mysql?characterEncoding=UTF-8&serverTimezone=JST";
//String database = "mysql";
String userid = "root";
String password = "password";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Information</title>
</head>
<body bgcolor="grey">
<p align="right"><%= (new java.util.Date()).toLocaleString()%></p>
<center><h1><strong><font color="lightblue">ユーザー情報一連</font></strong></h1></center>
<table width="400px" height="300px"  cellpadding="5" cellspacing="5" border="1" align="center">
<tr bgcolor="#A52A2A">
<center>
<td>Fullname</td>
<td>Email</td>
<td>Username</td>
<td>Address</td>
 </tr>

<%
try{
connection = DriverManager.getConnection(connectionUrl ,userid, password);
statement=connection.createStatement();
String sql ="select fullname,email,username, password from customers ";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
 
<tr bgcolor="#DEB887">
<td><%=resultSet.getString("fullname") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("username") %></td>
<td><%=resultSet.getString("password") %></td>
</tr>
 
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
 </center>
</table>
</body>
</html>