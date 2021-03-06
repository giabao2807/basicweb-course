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
	<div class="container">
		<h1>Search Wife</h1>
		<form action="<%=request.getContextPath()%>/SearchServlet" method="POST" name="form1">
			<select name="select1">
				<option value="name">name</option>
				<option value="address">address</option>
				<option value="alive">alive</option>
			</select> <input type="text" name="valuetext" /> <input type="submit"
				value="Search" name="searchStudent" />
		</form>
		<a href="<%= request.getContextPath() %>/OptionalServlet?index=0">Return</a>
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
	font-size: 20px;
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

h1 {
	font-weight: bold;
	text-align: center;
	border: 1px solid transparent;
	margin-bottom: 20px;
}

input {
	border: 1px solid #253e63;
	border-radius: 3px;
	padding: 6px;
	margin-top: 10px;
}

select {
	border: 1px solid #253e63;
	border-radius: 3px;
	padding: 4px;
	margin-top: 10px;
	color: #253e63;
	padding: 6px;
	margin-right: 15px;
	font-weight: bold;
}

input[type="submit"] {
	color: #253e63;
	width: 100px;
	margin-top: 20px;
	margin-left: 15px;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #aad4ef;
}

a {
    width: 300px;
    color: #253e63;
    text-align: center;
    text-decoration: none;
    border: 1px solid #253e63;
    border-radius: 4px;
    margin-top: 10px;
    margin-bottom: 5px;
    padding: 5px;
  }

  a:hover {
    background-color: #aad4ef;
    box-shadow: #aad4ef 0px 1px 2px 0px, #aad4ef 0px 1px 3px 1px;
  }
</style>
</html>
