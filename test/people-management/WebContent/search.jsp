<%@page import="model.bean.Admin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
	<% Admin admin = (Admin)request.getSession().getAttribute("admin");
		if (admin !=null ) 
		{
		%>
	<div class="container">
		<p>
			Welcome
			<%=admin.getUsername() %></p>
		<h1>Tìm Kiếm</h1>
		<form name="form1"
			action="<%=request.getContextPath()%>/SearchServlet" target="_self"
			method="POST">
			<select name="key">
				<option value="lastname">lastname</option>
				<option value="firstname">firstname</option>
			</select> <input type="text" name="value" /> <input type="submit"
				value="Tim kiếm" />
		</form>
		<a href="<%=request.getContextPath()%>/CheckLogoutServlet">Logout</a>
	</div>
	<%
		} 
		%>
</body>
<style>
body {
	background-color: pink;
	color: palevioletred;
	font-family: Arial, Helvetica, sans-serif;
	height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
}

.container {
	background-color: white;
	border: 2px solid palevioletred;
	border-radius: 4px;
	box-shadow: palevioletred 0px 3px 8px;
	padding: 20px;
	text-align: center;
	height:200px;]
}

.container p {
	text-align: left
}

h1 {
	text-align: center;
}

select {
	border: 1px solid palevioletred;
	border-radius: 4px;
	padding: 4px;
}


input {
	border: 1px solid palevioletred;
	border-radius: 4px;
	padding: 4px;
}

input[type="submit"] {
	background-color: palevioletred;
	color: white;
	width: 80px;
	margin-top: 20px;
	margin-bottom:20px;
}

.container a {
	padding: 4px;
	margin-top:10px;
	text-align: right;
	color: palevioletred;
	text-decoration: none;
}
</style>
</html>