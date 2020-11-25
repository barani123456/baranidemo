 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register</title>
<script> 
function showClock1() {
	   var nowdate  = new Date();
	   var year = nowdate.getFullYear();     // 年(4桁の西暦)
	   var mon  = nowdate.getMonth() + 1;    // 月(1～12)
	   var date = nowdate.getDate();
	   var nowHour = nowdate.getHours();
	   var nowMin  = nowdate.getMinutes();
	   var nowSec  = nowdate.getSeconds();
		var msg =  year + "年" + mon  + "月" + date + "日" + "　" + nowHour + ":"+ nowMin + ":" + nowSec ;
	   document.getElementById("RealtimeClockArea").innerHTML = msg;
	}
	setInterval('showClock1()',1000);
function validate()
{ 
 var fullname = document.form.fullname.value;
 var email = document.form.email.value;
 var username = document.form.username.value; 
 var password = document.form.password.value;
  
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
 } 
</script> 
</head>
<body bgcolor="lightgrey">
  <h2><font color="blue" font size="3"><p  align="right"id="RealtimeClockArea"></p></font></h2>
  <h1><center><font color="blue"> ユーザー情報の追加フォーム</font> </center></h1> 
 <MARQUEE ONMOUSEOVER="this.stop()" ONMOUSEOUT="this.start()" BEHAVIOR="alternate">
 <font color="grey" font size="3"><b>ファマトーに入力してください</b></font>
 </MARQUEE>
 <br> <br> <br> <br>
<form name="form" action="UserInsertServlet" method="post" >
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
 <td>ユーザー名</td>
 <td><input type="text" name="username" /></td>
 </tr>
<tr bgcolor="#DEB887">
 <td>パスワード</td>
 <td><input type="text" name="password" /></td>
 </tr>
 </table>
 <br>
 <center>
 <input type="submit" value="Add Customer"></input>  
 <input type="reset" value="Reset"></input>
 
  </center>
</form>
 	<br>
	<br>
	<br>
	<br>
	<br>
	<center>CopyRight@aljkanshuu</center>
 </body>
</html>