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
	String age = request.getParameter("age");
	
	out.println(name+":"+age+"歳");
%>
	<h1>Index</h1>
	<a href="result.jsp">result.jspへ遷移</a>
	<a href="result.jsp?color=blue">青</a>
	<a href="result.jsp?color=red">赤</a>
	
	<form method="post" action="result.jsp">
		名前:<input type="text" name="name" ><br/>
		年齢:<input type="text" name="age" ><br/>
		<button>Click</button>
	</form>
</body>
</html>