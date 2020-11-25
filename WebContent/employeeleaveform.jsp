<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
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
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Register</title>
<style>
* {
	box-sizing: border-box;
}

body {
	font-family: Arial, Helvetica, sans-serif;
}

/* Style the header */
header {
	background-color: #666;
	padding: 30px;
	text-align: center;
	font-size: 35px;
	color: white;
}

/* Create two columns/boxes that floats next to each other */
nav {
	float: left;
	width: 30%;
	height: 300px; /* only for demonstration, should be removed */
	background: #ccc;
	padding: 20px;
}

/* Style the list inside the menu */
article {
	float: left;
	padding: 20px;
	width: 70%;
	background-color: #f1f1f1;
	height: 300px; /* only for demonstration, should be removed */
}

/* Clear floats after the columns */

/* Style the footer */
footer {
	background-color: #777;
	padding: 10px;
	text-align: center;
	color: white;
}

/* Responsive layout - makes the two columns/boxes stack on top of each other instead of next to each other, on small screens */
@media ( max-width : 600px) {
	nav, article {
		width: 100%;
		height: auto;
	}
}
</style>
</head>
<body>
	<b><h2 align="right">
			<font color="blue" font size="4">
				<p class="glyphicon glyphicon-time" id="RealtimeClockArea"></p>
			</font>
		</h2></b>
	<h2 align="center">
		<font color="blue">Employee Leave Form</font>
	</h2>
	<header>
		<h2>Cities</h2>
	</header>
<form name="form" action="EmployeeLeaveFormServlet" method="post" >
<table align="center">
<tr bgcolor="#DEB887">
 <td>Date</td>
 <td><input type="date" name="Day" /></td>
 </tr>
<tr bgcolor="#DEB887">
 <td>Section_id</td>
 <td><input type="text" name="Section_id" /></td>
 </tr>
<tr bgcolor="#DEB887">
 <td>Over_Time_Start_Time</td>
 <td><input type="text" name="Over_Time_Start_Time"  /></td>
 </tr>
<tr bgcolor="#DEB887">
 <td>Over_Time_End_Time</td>
 <td><input type="text" name="Over_Time_End_Time" /></td>
 </tr>
 <tr bgcolor="#DEB887">
 <td>Reason</td>
 <td><input type="text" name="Reason" /></td>
 </tr>
 </table>
 <br>
  <input style="margin:10px" type="submit" value="確認"></input>  
 <input style="margin:10px" type="reset" value="Cancel"></input>
	<font size="3" font color="blue">日付： <select name="month"
		width=150px>
		 
  Birthday: <input type="date" name="bday">
  <input type="submit">
</form>
			<!-- <option value="" disabled selected hidden></option>
			<option value="1">01</option>
			<option value="2">02</option>
			<option value="3">03</option>
			<option value="4">04</option>
			<option value="5">05</option>
			<option value="6">06</option>
			<option value="7">07</option>
			<option value="8">08</option>
			<option value="9">09</option>
			<option value="10">10</option>
			<option value="11">11</option>
			<option value="12">12</option>
	</select> <font size="3">月</font> <select name="day" width=150px>
			<option value="" disabled selected hidden></option>
			<option value="1">01</option>
			<option value="2">02</option>
			<option value="3">03</option>
			<option value="4">04</option>
			<option value="5">05</option>
			<option value="6">06</option>
			<option value="7">07</option>
			<option value="8">08</option>
			<option value="9">09</option>
			<option value="10">10</option>
			<option value="11">11</option>
			<option value="12">12</option>
				<option value="13">13</option>
			<option value="14">14</option>
			<option value="15">15</option>
			<option value="16">16</option>
			<option value="17">17</option>
			<option value="18">18</option>
			<option value="19">19</option>
			<option value="20">20</option>
			<option value="21">21</option>
			<option value="22">22</option>
			<option value="23">23</option>
				<option value="24">24</option>
			<option value="25">25</option>
			<option value="26">26</option>
			<option value="27">27</option>
			<option value="28">28</option>
			<option value="29">29</option>
			<option value="30">30</option>
			<option value="31">31</option>
		 
	</select> <font size="3">日</font> -->
	</font>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<footer>
		<p>Footer</p>
	</footer>

</body>
</html>
