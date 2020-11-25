<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.util.*" %>
<%
 String SINo=request.getParameter("SINo");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?serverTimezone=JST", "root", "password");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM users where SINo="+SINo);
out.println("SINo="+SINo);
out.println("<br>");
out.println("Data Deleted Successfully!");
out.println( "<br>" );
out.println( "<br>" );
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
<!DOCTYPE html>
<html>
<body bgcolor="grey">
<input type="button" value="削除データ更新" onClick="location.href='user.jsp'">
</body>
</html>