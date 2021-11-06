<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>

<%
String usename = request.getParameter("username");
String password = request.getParameter("password");
String address = "Giabao's sweet house";
boolean check = false;

try {
	//Ket noi truc tiep voi Mysql
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dulieu", "root", "12341234");
	Statement stmt = conn.createStatement();

	String query = "Select * from admin where username='" + usename + "' and password='" + password + "';";
	ResultSet rs = stmt.executeQuery(query);
	loop:	if (rs.next()) {
		check = true;
		break loop;
	}
	rs.close();
	stmt.close();
} catch (Exception e) {
	System.out.println("Error" + e);
}

if (check) {
	request.setAttribute("address", address);
	RequestDispatcher rd = request.getRequestDispatcher("welcome.jsp");
	rd.forward(request, response);
} else {
	response.sendRedirect("login.jsp");
}
%>