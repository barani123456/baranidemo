<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%! String driverName ="com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/mysql?serverTimezone=JST";%>
<%!String user = "root";%>
<%!String psw = "password";%>
<%
String SINo = request.getParameter("SINo");
String fullname=request.getParameter("fullname");
String email=request.getParameter("email");
String username=request.getParameter("username");
String password=request.getParameter("password");
 if(SINo != null)
{
Connection con = null;
PreparedStatement ps = null;
 
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="update customers set SINo=?,fullname=?,email=?,username=?,password=? where SINo="+SINo;
ps = con.prepareStatement(sql);
ps.setString(1,SINo);
ps.setString(2, fullname);
ps.setString(3, email);
ps.setString(4, username);
ps.setString(5, password);
 
int i = ps.executeUpdate();
if(i > 0)
{
out.print("SINo= "+ SINo );
out.print("<br>");
out.print("Data reecord Updated Successfully");
out.println( "<br>" );
out.println( "<br>" );
}
else
{
out.print("There is a problem in updating Record.");
} 
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>
<!DOCTYPE html>
<html>
<body bgcolor="grey">
 <input type="button"  value="更新データ" onClick="location.href='customer.jsp'">
</body>
</html>