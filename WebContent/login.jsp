<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register & Login</title>
<meta charset="utf-8">
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
	function validate() {
		var username = document.form.username.value;
		var password = document.form.password.value;

		if (username == null || username.trim() == "") {
			alert("userName can't be blank");
			return false;
		} else if (password == null || password.trim() == "") {
			alert("Password can't be blank");
			return false;
		} else if (password.length < 5) {
			alert("Password must be at least 6 characters long.");
			return false;
		}

		else {
			document.login.submit(); // allow submit
		}
	}
</script>
</head>
<body
	background="C:\Users\barani mgmg\Desktop\Testing\Testing\login.png">


	<b><h2 align="right">
			<font color="blue" font size="4">
				<p class="glyphicon glyphicon-time" id="RealtimeClockArea"></p>
			</font>
		</h2></b>
	<form name="form" action="LoginController" method="post">
		<h1>
			<center>
				<font color="blue"><mark> 従業員ログインフォーム</mark></font>
			</center>
		</h1>
		</font> <br> <br> <br> <br>
		<!-- <br> <b>ユーザー名:</b> <input type="text" name="username"><br>
		<br> <b>パスワード:</b><input type="password" name="password" /><br /> -->
		<table align="center">
			<tr bgcolor="#DEB887">
				<td><span class="glyphicon glyphicon-user"></span> ユーザー名:</td>
				<td><input type="text" name="username"
					placeholder="Enter username...." required /></td>
			</tr>
			<tr bgcolor="#DEB887">
				<td><span class="glyphicon glyphicon-lock"></span> パスワード:</td>
				<td><input type="password" name="password"
					placeholder="Enter password...." required /></td>
			</tr>
		</table>
		<br>
		<center>

			<input
				style="margin: 10px; width: 6%; border-radius: 4px; background-color: blue; font-weight: bold; color: white;"
				type="submit" value="Login" onclick='validate()'></input> <input
				style="margin: 10px; width: 6%; border-radius: 4px; background-color: grey; font-weight: bold; color: white;"
				type="button" value="Back" onClick="location.href='index.jsp'">
			</input>
		</center>
	</form>
	<p>
		<b>Posted by:従業員支援サービス
	</p>
	<b>Contact information:</b>
	<a href="https://www.al-j.co.jp/"><b>www.al-j.co.jp/</b></a>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<center>CopyRight@baranikanshuu</center>

</body>
</html>