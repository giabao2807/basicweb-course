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
	<%
		List<Wife> wifes = (List<Wife>)request.getAttribute("wifes");
		for(Wife w : wifes){
	%>
	  <div class="container">
      <p>Name: <%=w.getName()%></p>
      <p>Address: <%=w.getAddress()%></p>
      <p>Alive: <%=w.getAlive()%></p>
    </div>
	<%	} %>
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

    h1 {
      font-weight: bold;
      text-align: center;
      border: 1px solid transparent;
      margin-bottom: 20px;
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