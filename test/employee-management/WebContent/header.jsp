<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head> </head>
  <body>
    <div class="header">
      <div class="brand">
        <img src="./images/logo.png" class="logo" />
      </div>
      <input type="search" placeholder="Tìm kiếm thông tin" class="search" />
    </div>
    <ul class="menu">
      <li>Home</li>
      <li>Giới thiệu</li>
      <li>Tuyển sinh</li>
      <li>Đào tạo</li>
      <li>Nghiên cứu khoa học</li>
      <li>Hợp tác</li>
      <li>Sinh viên</li>
      <li>Cựu sinh viên</li>
      <li>Liên hệ</li>
    </ul>
    <div class="bread-crumb">Trang chủ / Khoa Công nghệ thông tin</div>
  </body>
  <style>
    body {
      font-family: Arial, Helvetica, sans-serif;
      margin: 0;
    }

    .header {
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    .brand {
      display: flex;
      align-items: center;
    }

    .logo {
      width: 400px;
    }

    .search {
      border-radius: 9999px;
      border: 1px solid rgba(252, 254, 255, 0.915);
      padding: 5px;
      width: 200px;
    }

    .menu {
      display: flex;
      list-style-type: none;
      text-transform: uppercase;
      font-weight: bold;
    }

    .menu > li {
      margin-right: 20px;
    }

    .bread-crumb {
      background-color: rgb(213, 212, 212);
      padding: 10px;
    }
  </style>
</html>