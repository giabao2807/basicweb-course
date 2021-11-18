<%@page import="model.bean.Admin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
</head>
<body>
	<% Admin admin = (Admin)request.getSession().getAttribute("admin");
		if (admin !=null ) 
		{
		%>
	<ul>
		<li><a
			href="<%=request.getContextPath()%>/OptionalServlet?index=0"
			target="t3" style="font-size: large; font-weight: bold;">Trang
				chủ</a></li>
		<li><a
			href="<%=request.getContextPath()%>/OptionalServlet?index=1"
			target="t3">Nhân viên</a></li>
		<li><a
			href="<%=request.getContextPath()%>/OptionalServlet?index=2"
			target="t3">Phòng ban</a></li>
		<li><a
			href="<%=request.getContextPath()%>/OptionalServlet?index=3"
			target="t3">Tìm kiếm</a></li>
		<li class="logined"><a
			href="<%=request.getContextPath()%>/OptionalServlet?index=5"
			target="t3">Cập nhật</a></li>
		<li class="logined" ><a
			href="<%=request.getContextPath()%>/OptionalServlet?index=6"
			target="t3">Xoá thông tin</a></li>
		<li class="logined"><a
			href="<%=request.getContextPath()%>/OptionalServlet?index=7"
			target="t3">Xoá tất cả</a></li>
		<li class="logined" ><a
			href="<%=request.getContextPath()%>/OptionalServlet?index=8"
			target="t3">Thêm nhân viên</a></li>
		<li class="logined"  onclick="changelogin()"><a
			href="<%=request.getContextPath()%>/CheckLogoutServlet"
			target="t2">Đăng xuất</a></li>
	</ul>
	<%
		} else{
			%>
	<ul>
		<li><a
			href="<%=request.getContextPath()%>/OptionalServlet?index=0"
			target="t3" style="font-size: large; font-weight: bold;">Trang
				chủ</a></li>
		<li><a
			href="<%=request.getContextPath()%>/OptionalServlet?index=1"
			target="t3">Nhân viên</a></li>
		<li><a
			href="<%=request.getContextPath()%>/OptionalServlet?index=2"
			target="t3">Phòng ban</a></li>
		<li><a
			href="<%=request.getContextPath()%>/OptionalServlet?index=3"
			target="t3">Tìm kiếm</a></li>
		<li id="login"><a
			href="<%=request.getContextPath()%>/OptionalServlet?index=4"
			target="t3">Đăng nhập</a></li>
	</ul>
	<% 
		}
	%>
</body>
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
	margin-top: 10px;
	text-align: center;
	padding: 5px;
}

ul {
	background: #175276;
	width: 250px;
	padding: 0;
	list-style-type: none;
	text-align: auto;
}

li {
	width: auto;
	height: 30px;
	line-height: 30px;
	border-bottom: 1px solid #ffffff;
	padding: 0 1px;
}

li a {
	color: rgb(255, 255, 255);
	text-decoration: none;
	margin-top: 20px;
	box-shadow: inset;
	font-size: large;
	font-weight: bold;
	display: block;
}

li:hover {
	text-decoration: underline;
}
</style>
</html>
