<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
 <script>
 function insertconfirmComplete() {
	 var answer=confirm("デーダ確認したいですか？");
		if (answer==true)
		  {
		    return true;
		  }
		else

		  {
		    return false;
		  }
		}
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
</script>
<body bgcolor="lightgrey">
 <h2><font color="blue" font size="3"><p  align="right"id="RealtimeClockArea"></p></font></h2>
 <br>
 <br>
<!--  <input type="button" value="確認" onClick="location.href='customer.jsp'">-->
<font color="blue" font size="3">　 データが正常に入力は出来ました。　</font>
<br>
<br>
 <a href="customer.jsp">
 <input type="submit" class="insertuser" value="確認" onclick="{return insertconfirmComplete();}" />
</body>
</html>