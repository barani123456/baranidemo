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
 function addconfirmComplete() {
	 	var answer=confirm("Are You Confirm User Insert？");
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
<body bgcolor="lightblue" >
 <font color="blue" font size="3">User is successfully added!</font>
 <br>
 <br> 
 <a href="user.jsp">
 <input type="submit" class="adduser" value="Confirm" onclick="{return addconfirmComplete();}" />
</body>
</html>