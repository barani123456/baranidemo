<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@ page import = "java.io.*,java.util.*" %>
 <!DOCTYPE html>
<html>
<head>
 <meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial;}
/* Style the tab */
.tab {
  overflow: hidden;
  border: 1px solid #ccc;
  background-color: #f1f1f1;
}

/* Style the buttons inside the tab */
.tab button {
  background-color: inherit;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  transition: 0.3s;
  font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover {
  background-color: #ddd;
}

/* Create an active/current tablink class */
.tab button.active {
  background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
display: inline-block;
 padding: 6px 20px;
 border: 1px solid #ccc;
 cursor: pointer;
  box-shadow: inset -1px 1px 2px rgba(0, 0, 0, 0.3);
  border-radius: 5px 5px 0 0;
  box-sizing: border-box;
  height: 450px;
 font-size: 17px;
}

/* Style the close button */
.topright {
  float: right;
  cursor: pointer;
  font-size: 28px;
}
.topright:hover {color: red;}
</style>
</head>
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
</script>
<body background="C:\Users\barani mgmg\Desktop\Testing\Testing\service.jpg">
 <p align="left"><input type="button" value="Back" onClick="location.href='menu.jsp'"></p>
   <h2><font color="blue" font size="3"><p  align="right"id="RealtimeClockArea"></p></font></h2>
 <center>
 <MARQUEE ONMOUSEOVER="this.stop()" ONMOUSEOUT="this.start()"
		BEHAVIOR="alternate">
		<strong><font size=5 font color="#005CB9"><mark>利用規約サービスプログラム</mark>
		</font></strong>
	</MARQUEE>
	</center>
	<br><br>
<div class="tab">
  <button class="tablinks" onclick="openCity(event, 'It')" id="defaultOpen"> ITサービス</button>
  <button class="tablinks" onclick="openCity(event, 'Management')">管理サービス</button>
  <button class="tablinks" onclick="openCity(event, 'Marketing')">　マーケティングサービス</button>
   <button class="tablinks" onclick="openCity(event, 'Customer')"> お客様サービス</button>
</div>

<div id="It" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <h2><center>ITサービス</center></h2>
  <p align="justify">ITサービスマネジメントとは、顧客のニーズに合致した適切なITサービスを提供するマネジメント活動全般のことである。その運用の維持管理ならびに継続的改善を行っていくための仕組みをITサービスマネジメントシステムと呼ぶ。ITサービスマネジメントの略称はITSMで、ITサービスマネジメントシステムの略称はITSMSである。</p>
</div>

<div id="Management" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <h2><center>管理サービス</center></h2>
  <p align="justify">各団地（一部の団地を除く）には管理サービス事務所が設けられており、管理主任・ゆあ～メイト（窓口案内者）がご入居の皆様との直接の窓口となり、UR賃貸住宅使用上のご相談やお問い合わせに対応しています。</p> 
</div>

<div id="Marketing" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <h2><center>マーケティングサービス</center></h2>
 <p align="justify">デジタルマーケティングとは、「デジタル」を活用してマーケティングを行うことです。Web、SNS、インターネット広告、モバイルアプリなどデジタル媒体の活用だけではなく、オムニチャネル化されたお客様の行動をデータで捉え、あらゆるチャネルで最適なアプローチを行うマーケティング活動全体における「デジタル」の活用が必要です。
お客様の消費行動がオムニチャネル化され、企業が提供するサービスもデジタル化が進んでいます。その中で、マーケティングにおいても変革を求められています。そこで、注目されているのがデジタルマーケティングです。</p>
</div>
<div id="Customer" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <h2><center>お客様サービス</center></h2>
  <p align="justify">マイページにログインするために必要なお客様固有の番号です。
この番号は、（ご利用料金の変動がある月に）月々お送りさせていただきます「ご利用料金のお知らせ」（ご利用料金明細ハガキ）の中面に記載してありますのでご確認ください。
「ご利用料金のお知らせ」が届いていない、もしくは紛失した方は、恐れ入りますがコールセンター（0120－210－114　ガイダンス１番）にお問い合わせください。
※個人情報保護のため、お電話口でのお客様番号のお答えは受付しておりません。郵送にてご案内させていただきます。</p>
</div>

<script>
function openCity(evt, cityName) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>
   
</body>
</html> 
