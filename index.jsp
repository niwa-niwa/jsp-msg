<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>Index</title>
</head>
<body>
<%
	String name = request.getParameter("name");
	out.println(name);
%>
</body>
</html>