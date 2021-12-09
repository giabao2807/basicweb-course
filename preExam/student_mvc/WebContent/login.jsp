<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Form1|Login</title>
    <script>
      function checkInput() {
        var a = document.getElementById("username").value;
        var b = document.getElementById("password").value;
        if (a == "" || b == "") {
          alert("Mời nhập đủ thông tin!");
        }
      }
    </script>
  </head>
  <body>
    <div class="container">
      <h1>Đăng nhập hệ thống</h1>
      <form
        action="<%= request.getContextPath() %>/CheckLoginServlet"
        method="POST"
        name="form1"
      >
        <label for="username">Tên đăng nhập</label>
        <input type="text" name="username" id="username" /> <br />
        <label for="password">Mật khẩu</label>
        <input type="password" name="password" id="password" /> <br />
        <input type="submit" value="Đăng nhập" onClick="checkInput()" />
        <input type="reset" value="Huỷ" id="reset" /> <br />
      </form>
    </div>
  </body>
  <style>
    body {
      background-color: white;
      color: #0c476e;
      height: 100vh;
      font-family: Arial, Helvetica, sans-serif;
      display: flex;
      justify-content: center;
      align-items: center;
      margin: 0;
      font-size: 17px;
    }
    .container {
      background-color: white;
      width: 400px;
      text-align: center;
      border: 1px solid #0c476e;
      border-radius: 4px;
      box-shadow: white 0px 1px 2px 0px, white 0px 1px 3px 1px;
      padding: 50px;
    }
    h1 {
      text-align: left;
    }
    .container label {
      width: 50%;
    }
    input {
      width: 50%;
      border: 1px solid lightgray;
      border-radius: 3px;
      padding: 4px;
      margin-top: 10px;
    }

    input[type="submit"],
    input[type="reset"] {
      background-color: #0c476e;
      color: white;
      width: 100px;
      margin-top: 20px;
      cursor: pointer;
      padding: 10px;
    }
    input[type="submit"]:hover,
    input[type="reset"]:hover {
      background-color: white;
      color: #0c476e;
    }
  </style>
</html>
