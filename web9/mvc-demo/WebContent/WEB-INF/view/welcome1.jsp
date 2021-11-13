<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Quan ly sinh vien</title>
  </head>

  <body>
    <div class="list">
      <h1>Home page</h1>
      <a href="<%= request.getContextPath() %>/OptionalServlet?index=1">List</a>
      <a href="<%= request.getContextPath() %>/OptionalServlet?index=2">Add Wife</a>
      <a href="<%= request.getContextPath() %>/OptionalServlet?index=3">Update Wife</a>
      <a href="<%= request.getContextPath() %>/OptionalServlet?index=4">Delete Wife</a>
      <a href="<%= request.getContextPath() %>/OptionalServlet?index=5">Search Wife</a>
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
    }

    .list {
      font-family: Arial, Helvetica, sans-serif;
      display: flex;
      flex-direction: column;
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
      margin-bottom: 5px;
      padding: 5px;
    }

    a:hover {
      background-color: #aad4ef;
      box-shadow: #aad4ef 0px 1px 2px 0px, #aad4ef 0px 1px 3px 1px;
    }
  </style>
</html>
