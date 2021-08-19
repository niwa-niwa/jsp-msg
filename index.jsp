<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="msg.MessageDao" %>
<%@ page import="msg.Message" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html lang="ja">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="style.css">
	<title>Index</title>
</head>

<body>
	<h1>Index</h1>
	<form method="post" action="sample">
	
		タイトル<br/>
		<input type="text" name="title" /><br/>
		
		メッセージ<br/>
		<textarea name="contents" ></textarea>
		<br/>
		
		<button>Click</button>
		
	</form><br/>
	<%
		MessageDao message_dao = new MessageDao();
		List<Message> messages = message_dao.select();
	
		for( Message message : messages){
	%>
		<div>
			<div>
				<span><%= message.date %></span>
				<span><%= message.title %></span>
			</div>
			<div><%= message.contents.replace("\n","<br/>") %></div>
		</div>
		<br/>
	
	<% } %>
	
</body>
</html>