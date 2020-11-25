<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
   .footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color: powerblue;
   color: white;mm
   text-align: center;
}
  </style>
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
<body bgcolor="lightgrey">
 <center><h2>Home Page</h2></center>
  <h2><font color="blue" font size="3"><p  align="right"id="RealtimeClockArea"></p></font></h2>
<a href="menu.jsp"><img src="C:\Users\barani mgmg\Desktop\Testing\Testing\management.png" alt="写真" width="100" height="75"><a href="menu.jsp"> </a> 
<!-- <form action="logout.jsp" method="get"> 
<p align="right">
 <input type="button" value="Logout"  ></input>
  </p>
 </form> -->
 <p align="right">
 <input type="button" value="ログアウト" onClick="location.href='logout.jsp'">
 <!--  <a href="logout.jsp">Logout</a> -->
</p>
<br>

 <b>User Registration Successful</b>
 <br></br>
 <b>Please <a href="menu.jsp">log-in</a> to continue.</b>
  <footer class="footer">
<p align="center">copyRight@aljkanshuu</p>
</footer>
  
</body>
</html>