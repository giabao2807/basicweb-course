<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String usename = request.getParameter("username");
String password = request.getParameter("password");
String address = "192 Nguyen Luong Bang";

if ("Chi pheo".equals(usename) && (!"Thi no".equals(password))) {
	//Di den welcome.jsp
	request.setAttribute("address", address);
	RequestDispatcher rd = request.getRequestDispatcher("welcome.jsp");
	rd.forward(request, response);
} else {
	//Thatbai: Ve trang login.jsp
	response.sendRedirect("login.jsp");
}
%>