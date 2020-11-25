<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.util.*" %>
<%
String id = request.getParameter("id");
String driver ="com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/mysql?serverTimezone=JST";
 String userid = "root";
String password = "password";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl, userid, password);
statement=connection.createStatement();
String sql ="select * from employee where id="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <title>Insert title here</title>
 </head>
 <script>
function updateconfirmComplete() {
	 
	var answer=confirm("デーダを更新したいですか？");
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
<body bgcolor="grey">
<h1><center>更新フォーマットデータベース</center></h1>
<form method="post" action="update-process-customer.jsp">
<input type="hidden" name="id" value="<%=resultSet.getString("id") %>">
<input type="text" name="id" value="<%=resultSet.getString("id") %>">
<br>
Employee:<br>
<input type="text" name="employeename" value="<%=resultSet.getString("employeename") %>">
<br>
Email:<br>
<input type="text" name="email" value="<%=resultSet.getString("email") %>">
 <br>
Country:<br>
<input type="text" name="country" value="<%=resultSet.getString("country") %>">
<br>
 <br>
 <input type="submit" class="updatecustomer" value="更新" onclick="{return updateconfirmComplete();}" />
 <input type="button" value="キャンセル" onClick="location.href='employee.jsp'">
</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>