 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
   background-color: lightblue;
   color: white;
   text-align: center;
}
    </style>

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
 <h2><font color="blue" font size="3"><p  align="right" id="RealtimeClockArea"></p></font></h2>
 <h1><center><font color="green">Add User Information</font> </center></h1> 
 <!-- <MARQUEE ONMOUSEOVER="this.stop()" ONMOUSEOUT="this.start()" BEHAVIOR="alternate">
 <font color="grey" font size="3"><b>ファマトーに入力してください</b></font>
 </MARQUEE> -->
 <br> <br> <br> <br>
<form name="form" action="AddUserServlet" method="post" >
<table align="center">
<tr bgcolor="#DEB887">
 <td>名前</td>
 <td><input type="text" name="fullname" placeholder="Enter fullname.."/></td>
 </tr>
<tr bgcolor="#DEB887">
 <td>メール</td>
 <td><input type="text" name="email" placeholder="Enter email address.."/></td>
 </tr>
<tr bgcolor="#DEB887">
 <td>住所</td>
 <td><input type="text" name="address" placeholder="Enter address.."/></td>
 </tr>
<tr bgcolor="#DEB887">
 <td>電話番号</td>
 <td><input type="text" name="phonenumber" placeholder="Enter phonenumber.."/></td>
 </tr>
<tr bgcolor="#DEB887">
 <td>ユーザー名</td>
 <td><input type="text" name="username" placeholder="Enter username.."/></td>
 </tr>
<tr bgcolor="#DEB887">
 <td>パスワード</td>
 <td><input type="text" name="password" placeholder="Enterpassword.."/></td>
 </tr>
<tr bgcolor="#DEB887">
 <td>ユザ一連ー情報</td>
 <td>
  <select name="customerinformation"  width=250px >
       <option value="" disabled selected hidden>Please Choose　...</option>
       <option value = "Customer">Customer Information</option>
      <option value = "Guest"> Guest Information</option>
 	<option value = "Company"> Company Information</option>
     </select>               
 </td>
 </tr>
 </table>
 <br>
 <center>
 <input style="margin:10px" type="submit" value="AddUser"></input>  
 <input style="margin:10px" type="reset" value="Cancel"></input>
  <input type="button" value="Back" onClick="location.href='user.jsp'">
  </center>
</form>
 <footer class="footer">
 <p>CopyRight@aljkanshuu</p>
</footer>
 </body>
</html>