<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="model.bean.Admin"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Homepage</title>
</head>

<body>
	<% Admin admin = (Admin)request.getSession().getAttribute("admin");
		if (admin !=null ) 
		{
		%>
	<div class="list">
		<h1>Home page</h1>
		<a href="<%=request.getContextPath()%>/OptionalServlet?index=1"
			target="_self">Nhân viên</a> <a
			href="<%=request.getContextPath()%>/OptionalServlet?index=2"
			target="_self">Phòng ban</a> <a
			href="<%=request.getContextPath()%>/OptionalServlet?index=3"
			target="_self">Tìm kiếm</a> <a
			href="<%=request.getContextPath()%>/OptionalServlet?index=5"
			target="_self">Cập nhật</a> <a
			href="<%=request.getContextPath()%>/OptionalServlet?index=6"
			target="_self">Xoá thông tin</a> <a
			href="<%=request.getContextPath()%>/OptionalServlet?index=7"
			target="_self">Xoá tất cả</a> <a
			href="<%=request.getContextPath()%>/OptionalServlet?index=8"
			target="_self">Thêm nhân viên</a> <a
			href="<%=request.getContextPath()%>/CheckLogoutServlet" target="_self">Đăng
			xuất</a>
	</div>
	<%
		} else{
			%>
	<div class="list">
		<h1>Home page</h1>
		<a href="<%=request.getContextPath()%>/OptionalServlet?index=1"
			target="_self">Nhân viên</a> <a
			href="<%=request.getContextPath()%>/OptionalServlet?index=2"
			target="_self">Phòng ban</a> <a
			href="<%=request.getContextPath()%>/OptionalServlet?index=3"
			target="_self">Tìm kiếm</a> <a
			href="<%=request.getContextPath()%>/OptionalServlet?index=4"
			target="_self">Đăng Nhập</a>
	</div>
	<% 
		}
	%>
</body>

<style>
body {
    color: #F05E7F;
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
    color: #F05E7F;
    text-align: center;
    text-decoration: none;
    border: 1px solid #F05E7F;
    border-radius: 4px;
    margin-bottom: 5px;
    padding: 5px;
  }
  a:hover {
    background-color: #FFF3F6;
    box-shadow: #FCE1E4 0px 1px 2px 0px, #FCE1E4 0px 1px 3px 1px;
  }
</style>
</html>