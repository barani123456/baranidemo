 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Register</title>
<style>
    /* Set height of the grid so .sidenav can be 100% (adjust if needed) */
    .row.content {height: 1500px}
    /* Set gray background color and 100% height */
    /* Set black background color, white text and some padding */
    .footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   color: white;
   text-align: center;
}
 </style>

<script ="javascript">
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
 var address = document.form.address.value;
 var phonenumber = document.form.phonenumber.value;
 var username = document.form.username.value;
 var password = document.form.password.value;
 var customerinformation = document.form.customerinformation.value;

 if (fullname==null || fullname.trim()=="")
 {
 alert("Full Name can't be blank");
 return false;
 }
 else if (email==null || email.trim()=="")
 {
 alert("Email can't be blank");
 return false;
 }
 else if (address==null || address.trim()=="")
 {
 alert("Address can't be blank");
 return false;
 }
 else if (phonenumber==null || phonenumber.trim()=="")
 {
 alert("Phonenumber can't be blank");
 return false;
 }
 else if (username==null || username.trim()=="")
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
 else {
     document.register.submit(); // allow submit
 }
 }

</script>
</head>
<body background="C:\Users\barani mgmg\Desktop\Testing\Testing\register.jpg">
   <b><h2 align="right"><font color="blue" font size="4"> <p class="glyphicon glyphicon-time"  id="RealtimeClockArea"></p></font></h2></b>
 <h1><center><font color="green"> 従業員登録フォーム</font> </center></h1>
 <MARQUEE ONMOUSEOVER="this.stop()" ONMOUSEOUT="this.start()" BEHAVIOR="alternate">
<b><font color="blue" font size="4"><b>ファマトーに入力してください</b></font>
 </MARQUEE>
 <br>
 <br>
	<br>
	<br>
<form name="form" action="RegisterServlet" method="post" >
<table align="center">
<tr bgcolor="#DEB887">
 <td><span class="glyphicon glyphicon-user"></span> 名前</td>
 <td><input type="text" name="fullname" placeholder="Enter fullname.."/></td>
 </tr>
<tr bgcolor="#DEB887">
 <td><span class="glyphicon glyphicon-envelope"></span> メール</td>
 <td><input type="text" name="email" placeholder="Enter email address.."/></td>
 </tr>
<tr bgcolor="#DEB887">
 <td><span class="glyphicon glyphicon-home"></span> 住所</td>
 <td><input type="text" name="address" placeholder="Enter address.."/></td>
 </tr>
<tr bgcolor="#DEB887">
 <td><span class="glyphicon glyphicon-phone-alt"></span> 電話番号</td>
 <td><input type="text" name="phonenumber" placeholder="Enter phonenumber.."/></td>
 </tr>
<tr bgcolor="#DEB887">
 <td><span class="glyphicon glyphicon-user"></span> ユーザー名</td>
 <td><input type="text" name="username" placeholder="Enter username.."/></td>
 </tr>
<tr bgcolor="#DEB887">
 <td><span class="glyphicon glyphicon-lock"></span> パスワード</td>
 <td><input type="password" name="password" placeholder="Enterpassword.."/></td>
 </tr>
<tr bgcolor="#DEB887">

 <td><span class="glyphicon glyphicon-tasks"></span> ユザ一連ー情報</td>
 <td>
  <select name="customerinformation"  width=250px >
      <option value="" disabled selected hidden>Please Choose...</option>
      <option value = "User">User Information</option>
     <option value = "Employee"> Employee Information</option>
     <option value = "Customer"> Customer Information</option>
     </select>
 </td>
 </tr>
 </table>
 <br>
 <center>
 <input style="margin:10px;width: 6%;height: 40%;border-radius: 3px;background-color:blue;font-weight:bold;color:white;" type="submit" value="Register" onclick='validate()'></input>
 <input style="margin:10px;width: 6%;height: 40%;border-radius: 3px;background-color:grey;font-weight:bold;color:white;"
  type="reset" value="Reset"></input>
  <input style="margin:10px;width: 6%;height: 40%;border-radius: 3px;background-color:#C0C0C0;font-weight:bold;color:white;" type="button" value="Back" onClick="location.href='index.jsp'">
  </center>
</form>
 <footer class="footer">
 <p>CopyRight@baranikanshuu</p>
</footer>
 </body>
</html>