<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.util.*" %>
<%
String driver = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/mysql?characterEncoding=UTF-8&serverTimezone=JST";
//String database = "student";
String userid = "root";
String password = "password";
String fullname=request.getParameter("fullname");
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
<body bgcolor="lightblue">
 <input type="button" value="Back" onClick="location.href='user.jsp'">
<center><h1>ユーザー情報検索結果</h1></center>
<table width="200px" height="200px"  align="center" cellpadding="5" cellspacing="5" border="1" >
<tr bgcolor="#A52A2A">
<td>SINo</td>
<td>FullName</td>
<td>Email</td>
<td>Address</td>
<td>Phone Number</td>
<td>UserName</td>
<td>Customer Information</td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl, userid, password);
statement=connection.createStatement();
String sql ="select * from users where fullname='"+fullname+"'";
 
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">
<td><%=resultSet.getString("SINo") %></td>
<td><%=resultSet.getString("fullname") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("address") %></td>
<td><%=resultSet.getString("phonenumber") %></td>
<td><%=resultSet.getString("username") %></td>
<td><%=resultSet.getString("customerinformation") %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>
