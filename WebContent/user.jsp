<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.util.*" %>
<%@ page import = "java.text.SimpleDateFormat" %>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
function updateconfirmComplete() {
	 
	var answer=confirm("デーダを更新したいですか？");
	if (answer==true)
	  {
	    return true;
	  }
	else
	  {
	    return false;
	  }
	}
function deleteconfirmComplete() {
	 
	var answer=confirm("デーダを削除したいですか？");
	if (answer==true)
	  {
	    return true;
	  }
	else
	  {
	    return false;
	  }
	}
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
<body bgcolor="lightblue">
    <h2><font color="blue" font size="3"><p  align="right" id="RealtimeClockArea"></p></font></h2>
     <p align="left"><input type="button" value="Back" onClick="location.href='menu.jsp'"></p>
    <p align="right"><input type="button" value="ログアウト" onClick="location.href='logout.jsp'"></p>
 <center><h1><font color="blue">ユーザー情報</font></h1></center>
<br>
<h4><center> <input style="margin:15px" type="button" value="ADD USER" onClick="location.href='adduser.jsp'"> 
<input type="button" value="CUSTOMER RECORD DISPLAY" onClick="location.href='customer.jsp'">
<br><br> 

<div class="container">
<form class="form-inline" method="post" action="search.jsp">
<input type="text" name="fullname" class="form-control" placeholder="Search full name.." >
<button type="submit" name="save" class="btn btn-primary">Search</button>
</form>
</div>
</center>
<br><br><br> 
<table width="300px" height="300px"  align="center" cellpadding="5" cellspacing="5" border="1" >
<tr align="center" bgcolor="#A52A2A"> 
<td>SINO </td>
<td> Fullname </td>
<td> Email </td>
<td> Address </td>
<td> Phonenumber </td>
<td> Username</td>
<td> Password </td>
<td> InformationService </td>
 
<td> <marquee scrollamount="2.5"><mark>更新 </mark></marquee></td>
<td><marquee scrollamount="2.5"><mark> 削除 </mark></marquee></td>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl ,userid, password);
statement=connection.createStatement();
String sql ="select * from users  ";
resultSet = statement.executeQuery(sql);
int i=0;
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
 
 
<td><a href="customer.jsp">

<%=resultSet.getString("customerinformation") %></a></td>
<td><a href="updateuser.jsp?SINo=<%=resultSet.getString("SINo") %>">
<!-- <button type="button" class="update">Update</button> -->
 <input type="submit" style="background-color:blue;font-weight:bold;color:white;" value="更新" onclick="{return updateconfirmComplete();}" />
</a></td>
<td><a href="deleteuser.jsp?SINo=<%=resultSet.getString("SINo") %>">
<!-- <button type="button" class="deleteuser">Delete</button> -->
<input type="submit" style="background-color:red;font-weight:bold;color:white;"  value="削除" onclick="{return deleteconfirmComplete();}" />
</a></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>	
 <p align="center">CopyRight@aljkanshuu</p>
 </body>
</html>