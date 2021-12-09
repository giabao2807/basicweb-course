<%@page import="model.bean.SinhVien"%>
<%@page import="java.util.List"%>
<%@page import="model.bean.Khoa"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>ThongtinSV</title>
      <script
      src="https://kit.fontawesome.com/1939b78ca2.js"
      crossorigin="anonymous"
    ></script>
</head>
<body>
	<form class="selectform"  action="<%=request.getContextPath()%>/SelectServlet" method="POST">    
	<select name="select" onchange="this.form.submit()">
				<%
		List<Khoa> khoas = (List<Khoa>)request.getAttribute("khoas");
		for(Khoa khoa : khoas){
		%>
				
				<option value="<%=khoa.getMakhoa() %>">
					<%=khoa.getName() %></option>
				<%	} %>
				<option selected="selected">Khoa</option>
				<option value="all">Tất cả</option>
	</select>
	</form>
    <a class="button" href="<%=request.getContextPath()%>/OptionalServlet?index=1" >Thêm mới</a>
    </br>
	<table>
		<tr>
			<th>MSSV</th>
			<th>Hoten</th>
			<th>GioiTinh</th>
			<th>Khoa</th>
            <th>Update</th>
            <th>Delete</th>
		</tr>
		<%
		List<SinhVien> svs = (List<SinhVien>)request.getAttribute("svs");
		for(SinhVien sv : svs){
		%>
		<tr>
			<td class='center'><%=sv.getMsv() %></td>
			<td><%=sv.getName() %></td>
			<td><%=sv.getSex() %></td>
			<td><%=sv.getMakhoa() %></td>
            <td><a class='center' href="<%=request.getContextPath()%>/UpdateServlet?msv=<%=sv.getMsv() %>" ><i class="fas fa-edit"></i></a></td>
            <td><a class='center' href="<%=request.getContextPath()%>/DeleteServlet?msv=<%=sv.getMsv() %>" ><i class="fas fa-trash-alt"></i></a></td>
		</tr>
		<%	} %>
	</table>
</body>
<style>
        body {
            color: #0c476e;
            font-family: Arial, Helvetica, sans-serif;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }
       .selectform{
        width: 100%;
        }
      .selectform select {
		background-color: white;
		color: #0c476e;
		width: 30%;
		font-size: small;
		border: none;
		border-radius: 4px;
		outline: none;
		cursor: pointer;
		padding: 5px;
			margin: 10px auto 20px;
			float:left;
		}
		.button{
		float:right;
		background-color: #0c476e;
      	color: white;
      	width: 100px;
      	margin-top: 20px;
      	cursor: pointer;
      	padding: 10px;
      	text-decoration: none;
		}
        
        table {
            width: 100%;
        }
        caption {
            font-size: large;
            font-weight: bold;
            margin-bottom: 20px;
        }
        th, td {
        	
            border-bottom: 1px solid #0c476e;
        }
        th {
       		 color: white;
            background-color: #0c476e;
            padding: 5px;
        }
        td.center {
            text-align: center;
            padding: 5px;
        }
        tr:hover {
            background-color: #FFFFFF;
        }
    </style>
</html>