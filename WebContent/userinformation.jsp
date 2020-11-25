<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.util.*" %>
<%
String SINo = request.getParameter("SINo");
String driver = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/mysql?characterEncoding=UTF-8&serverTimezone=JST";
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
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
 <script>
  function showClock1() {
	   var nowdate  = new Date();
	   var year = nowdate.getFullYear();     // 年(4桁の西暦)
	   var mon  = nowdate.getMonth() + 1;    // 月(1～12)
	   var date = nowdate.getDate();
	   var nowHour = nowdate.getHours();
	   var nowMin  = nowdate.getMinutes();
	   var nowSec  = nowdate.getSeconds();
		var msg =  year + "年" + mon  + "月" + date + "日" + "　" + nowHour + ":"+ nowMin + ":" + nowSec ;
	   document.getElementById("RealtimeClockArea").innerHTML = msg;
	 
	}
	setInterval('showClock1()',1000);
</script>
<body bgcolor="grey">
 <h2><font color="blue" font size="3"><p  align="right" id="RealtimeClockArea"></p></font></h2>
<center><h1><font color="blue">ユーザー情報</font></h1></center>
 
<table width="300px" height="300px"  align="center" cellpadding="5" cellspacing="5" border="1" >
<tr bgcolor="#A52A2A">
<td>SINO</td>
<td>Fullname</td>
<td>Email</td>
<td>Address</td>
<td>Phonenumber</td>
<td>Username</td>
<td>Password</td>
<td>Customer Information</td>
<td>更新</td>
<td>削除</td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl ,userid, password);
statement=connection.createStatement();
String sql ="select * from users ";
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
<td><%=resultSet.getString("password") %></td>
<td><a href="customer.jsp"><%=resultSet.getString("customerinformation") %></a></td>
<td><a href="update.jsp?SINo=<%=resultSet.getString("SINo")%>">Update</a></td>
<td><a href="delete.jsp?SINo=<%=resultSet.getString("SINo")%>">Delete</a></td>
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