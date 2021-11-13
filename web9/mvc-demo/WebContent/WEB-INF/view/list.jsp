<%@page import="bean.Wife"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<caption>Wife list</caption>
		<tr>
			<th>Name</th>
			<th>Address</th>
			<th>Alive</th>
		</tr>
		<%
		List<Wife> wifes = (List<Wife>)request.getAttribute("wifes");
		for(Wife w : wifes){
		%>
		<tr>
			<td class='center'><%=w.getName() %></td>
			<td><%=w.getAddress() %></td>
			<td><%=w.getAlive() %></td>
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