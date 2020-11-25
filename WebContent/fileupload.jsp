<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ファイルアップロード</title>
</head>
<body>
<form method="POST" enctype="multipart/form-data" action="../UploadServlet">
<input type="file" name="file"/><br />
<input type="submit" value="アップロード" />
</form>
</body>
</html>