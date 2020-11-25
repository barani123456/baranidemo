<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import = "java.io.*,java.util.*" %>
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
<meta charset="UTF-8">
<title>Insert title here</title>
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
 function insertconfirmComplete() {
	 
		var answer=confirm("デーダ入力したいですか？");
		if (answer==true)
		  {
		    return true;
		  }
		else
		  {
		    return false;
		  }
		}
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
    </script>
<style>
   .footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color: lightblue;
   color: white;
   text-align: center;
}
    </style>
 
</head>
 <body bgcolor="grey">
  <p align="left"><input type="button" value="Back" onClick="location.href='menu.jsp'"></p>
    <h2><font color="blue" font size="3"><p  align="right"id="RealtimeClockArea"></p></font></h2>
    <center><h1><strong><font color="lightblue">お客様一連情報</font></strong></h1></center>
 
<table width="300px" height="300px"  align="center" cellpadding="5" cellspacing="5" border="1" >
<tr align="center" bgcolor="#A52A2A">
<td> SINO</td>
<td> Fullname</td>
<td>Email</td>
<td>Username</td>
<td>Password</td>
<td>InsertData</td>
<td>UpdateData</td>
<td>Delete</td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl ,userid, password);
statement=connection.createStatement();
String sql ="select * from customers";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887" align="center">
<td><%=resultSet.getString("SINo") %></td>
<td><%=resultSet.getString("fullname") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("username") %></td>
<td><%=resultSet.getString("password") %></td>
<td><a href="insertcustomer.jsp?SINo=<%=resultSet.getString("SINo") %>">
 <input type="submit" style="width: 90%;border-radius: 4px;background-color:grey;font-weight:bold;color:white;" class="insertcustomer" value="Insert" onclick="{return insertconfirmComplete();}" />
</a></td>
<td><a href="updatecustomer.jsp?SINo=<%=resultSet.getString("SINo") %>">
 <input type="submit" style="width: 90%;border-radius: 4px; background-color:blue;font-weight:bold;color:white;" class="updatecustomer" value="Update" onclick="{return updateconfirmComplete();}" />
</a></td>
<td><a href="deletecustomer.jsp?SINo=<%=resultSet.getString("SINo") %>">
 <input type="submit" style="width: 90%;  border-radius: 4px; background-color:red;font-weight:bold;color:white;" class="deletecustomer" value="Delete" onclick="{return deleteconfirmComplete();}" />
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
<footer class="footer">
 <p align="center">CopyRight@aljkanshuu</p>
</footer>
</body>
</html>