<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>output</title>
</head>
<body>
    <h2>プロフィール</h2>

    <%
        request.setCharacterEncoding("UTF-8");

        String sei = request.getParameter("sei");
        String mei = request.getParameter("mei");

        String sex = request.getParameter("sex");
        String age = request.getParameter("age");

        out.println("姓：" + sei + "<br>");
        out.println("名：" + mei + "<br>");
        if(sex.equals("male")){
            out.println("性別：男性<br>");
        }else{
            out.println("性別：女性<br>");
        }

        if(age.equals("9")){
            out.println("年齢：10才未満<br>");
        }else if(age.equals("60")){
            out.println("年齢：60才以上<br>");
        }else{
            out.println("年齢：" + age + "代<br>");
        }
    %>
</body>
</html>