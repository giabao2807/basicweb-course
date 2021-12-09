<%@page import="model.bean.Khoa"%>
<%@page import="model.bo.KhoaBo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<script>
      function checkInfo() {
        var a = document.getElementById("IDNV").value;
        var b = document.getElementById("hoten").value;
        var c = document.getElementById("diachi").value;
        if (a == "" || b == "" || c == "") {
          alert("Mời nhập đủ thông tin!");
        }
      }
    </script>
</head>
<body>
	<div class="container">
		<h1>Thêm mới sinh viên</h1>
		<form action="<%=request.getContextPath()%>/InsertServlet"
			method="POST" name="form1">
			<label>MSSV: </label>
			<input type="text" name="msv" />
			<br /> 
			<label>Ho ten: </label> 
			<input type="text" name="name" />
			<br /> 
			<label>Gioitinh: </label> 
			<input type="radio" name="sex" value="1"> 
			<label for="1">Nữ</label>
			<input type="radio" name="sex" value="0"> 
			<label for="0">Nam</label>
			<br /> 
			<label>Khoa: </label> 
			<select name="select">
				<%
				List<Khoa> khoas = (List<Khoa>)request.getAttribute("khoas");
				for(Khoa khoa : khoas){
				%>
				<option value="<%=khoa.getMakhoa()%>">
					<%=khoa.getName() %></option>
				<%	} %>
			</select> 
			<br /> 
			<input type="submit" value="OK" onclick="checkInfo()" /> 
			<input type="reset" id="reset" /> <br />
		</form>
	</div>
</body>

<style>
body {
	background-color: #FFF3F6;
	color: #0c476e;
	height: 100vh;
	font-family: Arial, Helvetica, sans-serif;
	display: flex;
	justify-content: center;
	align-items: center;
	margin: 0;
}
.container {
	background-color: white;
	width: 400px;
	text-align: center;
	border: 1px solid #0c476e;
	border-radius: 4px;
	box-shadow: #FCE1E4 0px 1px 2px 0px, #FCE1E4 0px 1px 3px 1px;
	padding: 20px;
}
input {
	border: 1px solid #FCE1E4;
	border-radius: 3px;
	padding: 4px;
	margin-top: 10px;
}
.select {
	background-color: #0c476e;
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
input[type="submit"], input[type="reset"] {
	background-color: #0c476e;
	color: white;
	width: 80px;
	margin-top: 20px;
	cursor: pointer;
}
input[type="submit"]:hover, input[type="reset"]:hover {
	background-color: white;
	color: #0c476e
}
</style>
</html>