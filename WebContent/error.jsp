<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="lightblue">
<p align="right"><font color="blue">現在日時：<%=(new java.util.Date()).toLocaleString()%></font></p>
<h2>Invalid username or password, Please try again with valid !</h2>
<br><br> Please<a href="login.jsp">Login Again</a>
</body>
</html>