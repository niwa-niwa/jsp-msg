<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="msg.Worker" %>
<jsp:useBean id="myWorker" type="msg.Worker" scope="request" />

<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>Result</title>
</head>
<body>

	<%
		Worker w = (Worker)request.getAttribute("myWorker");
	%>
	
	<h1>Result</h1>
	
	名前 : <%= w.getName() %><br/>
	年齢 : <jsp:getProperty name="myWorker" property="age" />歳<br/>
	
	<a href="index.jsp">index.jspへ戻る</a>

</body>
</html>