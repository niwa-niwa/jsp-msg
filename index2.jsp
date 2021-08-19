<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="msg.MessageDao" %>
<%@ page import="msg.Message" %>

<!DOCTYPE html>
<html lang="ja">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="style.css">
	<title>Index</title>
</head>

<body>
	<h1>Index</h1>
	<form method="post" action="send.jsp" >
		タイトル : <br/>
		<input type="text" name="title" /><br/>
		メッセージ : <br/>
		<textarea name="contents" rows="" cols=""></textarea><br/>
		<button>Click</button>
	</form>
	
	<%
		MessageDao dao = new MessageDao();
		List<Message> messages = dao.select();
	%>
	<% for(Message msg:messages){ %>
		<div>
			<%= msg.date %>
			<%= msg.title %>
			<div>
				<%= msg.contents.replace("\n","<br/>") %>
			</div>
		</div>
	<% } %>
</body>
</html>