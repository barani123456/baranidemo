<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import = "java.io.*,java.util.*" %>
<%@ page import = "java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat" %>
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
<body bgcolor="lightblue" >
 <h2><font color="blue" font size="3"><p  align="right"id="RealtimeClockArea"></p></font></h2>
<font color="blue" font size="3"> Register SuccessFully!!Please Login</font>
 <br>
 <br> 
  <font size="10"><input type="button" value="Login" onClick="location.href='login.jsp'"> </font>
</body>
</html>