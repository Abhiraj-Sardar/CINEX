<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="model.ConnectionProvider" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String email=request.getParameter("email");
Connection con;
PreparedStatement pstm;
try{
	con=ConnectionProvider.createC();
	pstm=con.prepareStatement("delete from admin where email=?");
	pstm.setString(1, email);
	pstm.executeUpdate();
	con.close();
	response.sendRedirect("admindashboard.jsp");
}catch (Exception e){}
%>
</body>
</html>