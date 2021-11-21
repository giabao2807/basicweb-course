<%@page import="model.bean.PhongBan"%>
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
		<h1>Them Nhan Vien</h1>
		<form action="<%=request.getContextPath()%>/InsertServlet"
			method="POST" name="form1">
			<label>Họ Tên: </label> <input type="text" name="hoten" id="hoten" />
			<br /> <label>Địa Chỉ: </label> <input type="text" name="diachi"
				id="diachi" /> <br /> <label>Ten Phong Ban: </label> <select
				name="select">
				<%
		List<PhongBan> pbs = (List<PhongBan>)request.getAttribute("pbs");
		for(PhongBan pb : pbs){
		%>
				<option value="<%=pb.getIdpb()%>">
					<%=pb.getTenpb() %></option>
				<%	} %>
			</select name="select"> <br /> <input type="submit" value="OK" onclick="checkInfo()" /> <input
				type="reset" id="reset" /> <br />
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

.container {
	background-color: #FCE1E4;
	width: 250px;
	text-align: center;
	border: 1px solid #F05E7F;
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

input[type="submit"], input[type="reset"] {
	background-color: #F05E7F;
	color: white;
	width: 80px;
	margin-top: 20px;
	cursor: pointer;
}

input[type="submit"]:hover, input[type="reset"]:hover {
	background-color: #FCE1E4;
	color: #F05E7F
}
</style>
</html>