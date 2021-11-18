<%@page import="model.bean.People"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Thongtin PP</title>
</head>
<body>
	<table>
		<caption>List Phong Ban</caption>
		<tr>
			<th>IDPB</th>
			<th>TenPB</th>
			<th>Mota</th>
			<th>Xoa</th>
			<th>Capnhat</th>
		</tr>
		<%
		List<People> pps = (List<People>)request.getAttribute("pps");
		for(People pp : pps){
		%>
		<tr>
			<td class='center'><%=pp.getId()%></td>
			<td><%=pp.getLastname()%></td>
			<td><%=pp.getFirstname() %></td>
			<td><a href="<%=request.getContextPath()%>/DeleteServlet?id&value=<%=pp.getId() %>" target ="_self">xxx</a></td>
			<td><a href="<%=request.getContextPath()%>/UpdateServlet?id&value=<%=pp.getId() %>" target ="_self">Capnhat</a></td>
		</tr>
		<%	} %>
	</table>
	 <a href="javascript:history.back();">Return</a>

</body>
<style>
    body {
        color: #253e63;
        font-family: Arial, Helvetica, sans-serif;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        padding: 20px;
    }
    table {
        width: 100%;
    }
    table tr:nth-child(odd){
        background-color:#eee;
    }
    table tr:nth-child(even){
        background-color:white;
    }
    caption {
        font-size: large;
        font-weight: bold;
        margin-bottom: 20px;
    }
    th, td {
        border-bottom: 1px solid #aad4ef;
    }
    th {
        color: #fff;
        background-color: #253e63;
        padding: 5px;
    }
    td.center {
        text-align: center;
        padding: 5px;
    }
    a {
        color: #253e63;
        text-decoration: none;
    }
    .button {
      width: 300px;
      color: #253e63;
      text-align: center;
      text-decoration: none;
      border: 1px solid #253e63;
      border-radius: 4px;
      margin-top: 20px;
      margin-bottom: 5px;
      padding: 5px;
    }
    .button:hover {
      background-color: #aad4ef;
      box-shadow: #aad4ef 0px 1px 2px 0px, #aad4ef 0px 1px 3px 1px;
    }
  </style>
</html>