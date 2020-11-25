<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*,java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
/* Set height of the grid so .sidenav can be 100% (adjust if needed) */
.row.content {
	height: 1500px
}

/* Set gray background color and 100% height */

/* Set black background color, white text and some padding */
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
<script>
function showClock1() {
	   var nowdate  = new Date();
	   var year = nowdate.getFullYear();     // 年(4桁の西暦)
	   var mon  = nowdate.getMonth() + 1;    // 月(1～12)
	   var date = nowdate.getDate();
	   var nowHour = nowdate.getHours();
	   var nowMin  = nowdate.getMinutes();
	   var nowSec  = nowdate.getSeconds();
	  /*  while (nowMin<10 || nowSec<10){
		   var msg =  year + "年" + mon  + "月" + date + "日" + "　" + nowHour + ":0"+ nowMin + ":0" + nowSec ;
		   document.getElementById("RealtimeClockArea").innerHTML = msg;
	   } */
	    var msg =  year + "年" + mon  + "月" + date + "日" + "　" + nowHour + ":"+ nowMin + ":" + nowSec ;
	   document.getElementById("RealtimeClockArea").innerHTML = msg;
	 }
	setInterval('showClock1()',1000);
	</script>
<body  bgcolor="#ffffff" text="#000000" link="#0000ff" >
	<b><h2 align="right"><font color="blue" font size="4.5"> <p class="glyphicon glyphicon-time"  id="RealtimeClockArea"></p></font></h2>
	 <MARQUEE ONMOUSEOVER="this.stop()" ONMOUSEOUT="this.start()"
		BEHAVIOR="alternate">
		<strong><font size=5 font color="#005CB9">ようこそ！従業員支援管理プログラムー
		</font></strong>
	</MARQUEE>
	<br>
	<!-- <font color="green">興味ある人は必ず登録してください!</font><br> -->
	<br>
	<br>
	<b>
	<a href="termsandcondition.jsp"> <font color=#006666 font size="4"> <span class="glyphicon glyphicon-th-list"></span> 従業員登録フォーム</font></a>

	<br>
	<br>
	<a href="login.jsp"> <font color=#006666 font size="4"> <span class="glyphicon glyphicon-user"></span> 従業員ログインフォーム</font></a>
	</b>
	<br>
	<br>
	<font color="red">すでにアカウントがあります！ログインしてください!</font>
	<br>
	<font color="blue">Already account!Please Login!!</font>
	<footer class="footer">
		<p align="center">CopyRight@baranikanshuu</p>
	</footer>
</body>
</html>
