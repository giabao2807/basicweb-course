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
		<form name="form1"
			action="<%=request.getContextPath()%>/SearchServlet" target="_self"
			method="POST">
			<h1 class="title">Search</h1>
			<div class="label">Select property for search</div>
			<select class="select" name="key">
				<option value="IDNV">IDNV</option>
				<option value="hoten">hoten</option>
				<option value="diachi">diachi</option>
				<option value="IDPB">IDPB</option>
			</select>
			<div class="label">Input</div>
			<input class="input" type="text" name="value" />
			<div class="button-container">
				<input class="button" id="btn" name="submit" type="submit"
					value="Search" /> <a href="javascript:history.back();"
					class="button">Return</a>
			</div>
		</form>
	</div>
</body>
<style>
body {
	background-color: #FFF3F6;
	color: #F05E7F;
	height: 100vh;
	font-family: Arial, Helvetica, sans-serif;
	display: flex;
	justify-content: center;
	align-items: center;
	margin: 0;
}

form {
	background-color: #FCE1E4;
	width: 250px;
	text-align: center;
	border: 1px solid #F05E7F;
	border-radius: 4px;
	box-shadow: #FCE1E4 0px 1px 2px 0px, #FCE1E4 0px 1px 3px 1px;
	padding: 20px;
}

.title {
	font-weight: bold;
}

.select {
	background-color: #F05E7F;
	color: #FFF3F6;
	width: 100%;
	font-size: small;
	border: none;
	border-radius: 4px;
	outline: none;
	cursor: pointer;
	padding: 5px;
	margin: 10px auto 20px;
}

.label {
	text-align: left;
}

.input {
	background-color: transparent;
	color: #6F595B;
	width: 100%;
	outline: none;
	border: none;
	border-bottom: 1px solid #F05E7F;
	padding: 5px;
	margin-bottom: 20px;
}

.button {
	background-color: #F05E7F;
	color: #FFF3F6;
	font-size: small;
	text-decoration: none;
	border: none;
	border-radius: 4px;
	box-shadow: #FCE1E4 0px 1px 2px 0px, #FCE1E4 0px 1px 3px 1px;
	cursor: pointer;
	margin: auto 2px;
	padding: 5px;
}
</style>
</html>