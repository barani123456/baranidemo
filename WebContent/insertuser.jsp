 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register</title>
<script>
function validate()
{
 var fullname = document.form.fullname.value;
 var email = document.form.email.value;
 var address = document.form.address.value;
 var phonenumber = document.form.phonenumber.value;
 var username = document.form.username.value;
 var password = document.form.password.value;
 var customerinformation = document.form.customerinformation.value;

 if (fullname==null || fullname=="")
 {
 alert("Full Name can't be blank");
 return false;
 }
 else if (email==null || email=="")
 {
 alert("Email can't be blank");
 return false;
 }
 else if (address==null || address=="")
 {
 alert("Address can't be blank");
 return false;
 }
 else if (phonenumber==null || phonenumber=="")
 {
 alert("Phonenumber can't be blank");
 return false;
 }
 else if (username==null || username=="")
 {
 alert("userName can't be blank");
 return false;
 }
 else if(password.length<6)
 {
 alert("Password must be at least 6 characters long.");
 return false;
 }
 else if (customerinformation==null || customerinformation=="")
 {
	 alert("customerinformation can't be blank");
 return false;
 }
 }
</script>
</head>
<body bgcolor="lightgrey">
<p align="right"><font color="blue">現在日時：<%=(new java.util.Date()).toLocaleString()%></font></p>
  <h1><center><font color="blue"> ユーザー情報の追加フォーム</font> </center></h1>
 <MARQUEE ONMOUSEOVER="this.stop()" ONMOUSEOUT="this.start()" BEHAVIOR="alternate">
 <font color="grey" font size="3"><b>ファマトーに入力してください</b></font>
 </MARQUEE>
 <br> <br> <br> <br>
<form name="form" action="RegisterServlet" method="post" >
<table align="center">
<tr bgcolor="#DEB887">
 <td>名前</td>
 <td><input type="text" name="fullname" /></td>
 </tr>
<tr bgcolor="#DEB887">
 <td>メール</td>
 <td><input type="text" name="email" /></td>
 </tr>
<tr bgcolor="#DEB887">
 <td>住所</td>
 <td><input type="text" name="address" /></td>
 </tr>
<tr bgcolor="#DEB887">
 <td>電話番号</td>
 <td><input type="text" name="phonenumber" /></td>
 </tr>
<tr bgcolor="#DEB887">
 <td>ユーザー名</td>
 <td><input type="text" name="username" /></td>
 </tr>
<tr bgcolor="#DEB887">
 <td>パスワード</td>
 <td><input type="text" name="password" /></td>
 </tr>
<tr bgcolor="#DEB887">
 <td>ユザ一連ー情報</td>
 <td>
  <select name="customerinformation"  width=250px>
   <option value = "   ">  </option>
  <option value = "Customer">Customer Information</option>
     <option value = "Guest"> Guest Information</option>
     <option value = "Company"> Company Information</option>
     </select>
 </td>
 </tr>
 </table>
 <br>
 <center>
 <input type="submit" value="Add User"></input>
 <input type="reset" value="Reset"></input>

  </center>
</form>
 	<br>
	<br>
	<br>
	<br>
	<br>
	<center>CopyRight@baranikanshuu</center>
 </body>
</html>