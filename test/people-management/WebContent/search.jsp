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
      <h1>Tìm Kiếm</h1>
      <form name="form1" action="<%=request.getContextPath()%>/SearchServlet" target ="_self" method="POST">
        <select name="key">
          <option value="IDNV">lastname</option>
          <option value="hoten">firstname</option>
        </select>
        <input type="text" name="value" />
        <input type="submit" value="Tim kiếm" />
      </form>
    </div>
  </body>
  <style>
    body {
      background-color: pink;
      color: palevioletred;
      font-family: Arial, Helvetica, sans-serif;
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      margin: 0;
    }
    .container {
      background-color: white;
      border: 2px solid palevioletred;
      border-radius: 4px;
      box-shadow: palevioletred 0px 3px 8px;
      padding: 20px;
      text-align: center;
    }
    h1 {
      text-align: center;
    }
    select {
    border: 1px solid palevioletred;
      border-radius: 4px;
      padding: 4px;
    }
    input {
      border: 1px solid palevioletred;
      border-radius: 4px;
      padding: 4px;
    }
    input[type="submit"] {
      background-color: palevioletred;
      color: white;
      width: 80px;
      margin-top: 20px;
    }
  </style>
</html>