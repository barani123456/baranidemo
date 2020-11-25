<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.util.*" %>

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
  <h2><font color="blue" font size="3"><p  align="right"id="RealtimeClockArea"></p></font></h2>
<input type="button" class="delete1" value="削除データ更新" onClick="location.href='customer.jsp'">
 <%
 String SINo=request.getParameter("SINo");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?serverTimezone=JST", "root", "password");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM customers where SINo="+SINo);
out.println("<br>");
out.println("SINo="+SINo);
out.println("<br>");
out.println("Data Deleted Successfully!");
out.println( "<br>" );
out.println( "<br>" );
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
</body>
</html>