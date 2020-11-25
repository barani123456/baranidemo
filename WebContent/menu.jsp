<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%!String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/mysql?serverTimezone=JST";%>
<%!String user = "root";%>
<%!String psw = "password";%>
<%
 	out.print("<b>");
	String username = "";
	if (request.getParameter("username") != null) {
		username = request.getParameter("username");
	}
	out.print("<font color =blue >");
	out.print("</b >");
	out.print(username + "さんがログインされています。");
	out.print("</font >");
%>
<%-- <%
	out.print("<b>");
	String username = request.getParameter("username");
	out.print("<font color =blue >");
	out.print("</b >");
	out.print(username + "さんがログインされています。");
	out.print("</font >");
%> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
	color: white;
	text-align: center;
}

.tab {
	overflow: hidden;
	border: 4px solid #ccc;
	background-color: #f1f1f1;
	word-spacing: 37px;
	text-align: center;
}
</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script>
	function showClock1() {
		var nowdate = new Date();
		var year = nowdate.getFullYear(); // 年(4桁の西暦)
		var mon = nowdate.getMonth() + 1; // 月(1～12)
		var date = nowdate.getDate();
		var nowHour = nowdate.getHours();
		var nowMin = nowdate.getMinutes();
		var nowSec = nowdate.getSeconds();
		var msg = year + "年" + mon + "月" + date + "日" + "　" + nowHour + ":"
				+ nowMin + ":" + nowSec;
		document.getElementById("RealtimeClockArea").innerHTML = msg;

	}
	setInterval('showClock1()', 1000);
</script>
</head>
<body background="C:\Users\barani mgmg\Desktop\Testing\Testing\menu.jpg">

	<br>
	<p align="right">
		<input type="button" value="ログアウト"
			onClick="location.href='logout.jsp'"> </font>
	</p>
	<b><h2 align="right">

			<font color="blue" font size="4">
				<p class="glyphicon glyphicon-time" id="RealtimeClockArea"></p>
			</font>
		</h2></b>
	<br>
	<MARQUEE ONMOUSEOVER="this.stop()" ONMOUSEOUT="this.start()"
		BEHAVIOR="alternate">
		<font size="5" color="#0000ff"><b>ようこぞ！</b> </font>
	</MARQUEE>
	<br>
	<br>
	<br>
	<center>
		<font size="4" color="#0000ff"><b>オフィス管理システム！</b> </font>
	</center>
	<br>
	<div class="tab">
		<font size="3" color="yellow"> <a href="service.jsp"><b>About</b></a>
			<a href="Home.jsp"><b>Home</b></a> <a href="user.jsp"><b>UserInformation</b></a>
			<a href="employee.jsp"><b>EmployeeInformation</b></a> <a
			href="customer.jsp"><b>CustomerInformation</b></a> <a
			href="customercontact.jsp"><b>CustomerService</b></a> <a
			href="companyaddress.jsp"><b>CompanyContact</b></a>
		</font>
	</div>
	<footer class="footer">
		<p align="center">copyRight@aljkanshuu</p>
	</footer>
</body>
</html>
