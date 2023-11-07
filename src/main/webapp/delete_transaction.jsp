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
String cno=request.getParameter("cno");
Connection con;
PreparedStatement pstm;
try{
	con=ConnectionProvider.createC();
	pstm=con.prepareStatement("delete from transaction where card_number=?");
	pstm.setString(1, cno);
	pstm.executeUpdate();
	con.close();
	response.sendRedirect("admindashboard.jsp");
}catch (Exception e){}
%>
</body>
</html>