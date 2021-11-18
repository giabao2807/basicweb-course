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
      <form action="<%=request.getContextPath()%>/InsertServlet" method="POST" name="form1">
        <label>Họ Tên: </label>
        <input type="text" name="hoten" id="hoten" />
        <br />
        <label>Địa Chỉ: </label>
        <input type="text" name="diachi" id="diachi" />
        <br />
        <label>Ten Phong Ban: </label>
        <select name="select">
        <%
		List<PhongBan> pbs = (List<PhongBan>)request.getAttribute("pbs");
		for(PhongBan pb : pbs){
		%>
		<option value="<%=pb.getIdpb()%>"> <%=pb.getTenpb() %></option>
		<%	} %>
		</select>
        <br />
        <input type="submit" value="OK" onclick="checkInfo()" />
        <input type="reset" id="reset" />
        <br />
      </form>
    </div>
  </body>

  <style>
    body {
      background-color: rgb(200, 181, 229);
      color: rgb(58, 22, 86);
      font-family: Arial, Helvetica, sans-serif;
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      margin: 0;
    }
    .container {
      background-color: white;
      border: 2px solid rgb(58, 22, 86);
      border-radius: 3px;
      box-shadow: rgb(58, 22, 86) 0px 3px 8px;
      padding: 20px;
      text-align: center;
    }
    input {
      border: 1px solid rgb(58, 22, 86);
      border-radius: 3px;
      padding: 4px;
      margin-top: 10px;
    }
    select {
       border: 1px solid rgb(58, 22, 86);
      border-radius: 3px;
      padding: 4px;
      margin-top: 10px;
    }
    input[type="submit"],
    input[type="reset"] {
      background-color: rgb(58, 22, 86);
      color: white;
      width: 80px;
      margin-top: 20px;
      cursor: pointer;
    }
    input[type="submit"]:hover,
    input[type="reset"]:hover {
      background-color: rgb(152, 91, 198);
    }
  </style>
</html>