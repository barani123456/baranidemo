<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.util.*" %>
 <%
String id = request.getParameter("id");
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
    <h2><font color="blue" font size="3"><p  align="right"id="RealtimeClockArea"></p></font></h2>
 <p align="left"><input type="button" value="Back" onClick="location.href='menu.jsp'"></p>
<center><h1><strong><font color="lightblue">社員情報一連</font></strong></h1></center>
 <table width="300px" height="300px"  align="center" cellpadding="5" cellspacing="5" border="1" >
<tr align="center" bgcolor="#A52A2A">
<td>ID</td>
<td>EMPLOYEENAME</td>
<td>EMAIL</td>
<td>COUNTRY</td>
<td>UPDATE</td>
<td>DELETE</td>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl ,userid, password);
statement=connection.createStatement();
String sql ="select * from employee ";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887" align="center">
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("employeename") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("country") %></td>
<td><a href="updateemployee.jsp?id=<%=resultSet.getString("id") %>">
 <input type="submit" class="updateemployee" value="更新" onclick="{return updateconfirmComplete();}" />
</a></td>
<td><a href="deleteemployee.jsp?id=<%=resultSet.getString("id") %>">
 <input type="submit" class="deleteemployee" value="削除" onclick="{return deleteconfirmComplete();}" />
</a>　
</td>
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
  CopyRight@baranikanshuu
</footer>
</body>
</html>