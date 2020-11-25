<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<body bgcolor="lightgrey">
  <h2><font color="blue" font size="3"><p  align="right"id="RealtimeClockArea"></p></font></h2>
<p align="right">
<a href="https://www.w3schools.com/java/">参照サイト</a>
 <h3><center>You are successfully logout!</center></h3> 
 <br>
 <br>
Back Menu!Press Login Button! 
<br>
 <br>
<input type="button" value="Login Back" onClick="location.href='login.jsp'">
 </p>
 
</body>
</html>