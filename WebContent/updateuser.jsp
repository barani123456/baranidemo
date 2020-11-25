<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.util.*" %>
<%
String SINo = request.getParameter("SINo");
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
String sql ="select * from users where SINo="+SINo;
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
<form method="post" action="update-process-user.jsp">
<input type="hidden" name="SINo" value="<%=resultSet.getString("SINo") %>">
<input type="text" name="SINo" value="<%=resultSet.getString("SINo") %>">
<br>
FullName:<br>
<input type="text" name="fullname" value="<%=resultSet.getString("fullname") %>">
<br>
Email<br>
<input type="text" name="email" value="<%=resultSet.getString("email") %>">
<br>
Address<br>
<input type="text" name="address" value="<%=resultSet.getString("address") %>">
<br>
PhoneNumber:<br>
<input type="text" name="phonenumber" value="<%=resultSet.getString("phonenumber") %>">
<br>
UserName:<br>
<input type="text" name="username" value="<%=resultSet.getString("username") %>">
<br>
Password:<br>
<input type="password" name="password" value="<%=resultSet.getString("password") %>">
<br>
Customerinformation:<br>
 <select name="customerinformation"  width=250px value="<%=resultSet.getString("customerinformation") %>">
     <option value="" disabled selected hidden><%=resultSet.getString("customerinformation") %></option>
     <option value = "User Information">User Information</option>
     <option value = "Employee Information"> Employee Information</option>
     <option value = "Customer Information"> Customer Information</option>
     </select>              
<br>
<br>
 <input type="submit" class="updateuser" value="更新" onclick="{return updateconfirmComplete();}" />
 <input type="button" value="キャンセル" onClick="location.href='user.jsp'">
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