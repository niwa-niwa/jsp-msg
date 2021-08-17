<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html lang="ja">
<html>
<head>
<meta charset="UTF-8">
<title>Result</title>
</head>
<body>

	<%
		String color = request.getParameter("color");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
	%>
	<h1>Result</h1>
	<% if("blue".equals(color)){ %>
		<p>選択された色は青です。</p>
	<% } else if("red".equals(color)){%>
		<p>選択された色は赤です。</p>
	<% } %>
	<p>名前 : <%= name %></p>
	<p>年齢 : <%= age %></p>
	
	<a href="index.jsp">index.jspへ戻る</a>

</body>
</html>