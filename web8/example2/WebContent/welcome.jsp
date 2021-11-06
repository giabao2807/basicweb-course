<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome|giabao</title>
</head>
<body>
	<%
		String username = request.getParameter("username");
		String address = (String)request.getAttribute("address");
		String temp = (String)session.getAttribute("temp");
	%>
	<div class="container">
		<p>
			Welcome
			<%=username%></p>
		<p>
			You are living at
			<%=address%></p>
		<p>
			Temp=
			<%=temp %></p>
	</div>
</body>
<style>
body {
	color: #253e63;
	height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
	margin: 0;
}

.container {
	font-family: Arial, Helvetica, sans-serif;
	display: flex;
	flex-direction: column;
	border: 1px solid #253e63;
	border-radius: 4px;
	padding: 20px;
	box-shadow: #253e63 0px 1px 2px 0px, #253e63 0px 1px 3px 1px;
}
</style>
</html>
