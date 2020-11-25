<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%! String driverName ="com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/mysql?serverTimezone=JST";%>
<%!String user = "root";%>
<%!String psw = "password";%>
<%
String id = request.getParameter("id");
String employeename=request.getParameter("employeename");
String email=request.getParameter("email");
String country=request.getParameter("country");
 
 if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
 
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="update employee set id=?,employeename=?,email=?,country=? where id="+id;
ps = con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2,employeename);
ps.setString(3, email);
ps.setString(4, country);
 
 
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Employee ID= "+ id );
out.print("<br>");
out.print("Employee Data reecord Updated Successfully");
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
<font color="blue">Update Data SuccessFully</font>
<br>
 <input type="button"  value="更新データ" onClick="location.href='employee.jsp'">
</body>
</html>