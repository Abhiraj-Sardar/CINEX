<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*" %>
    <%@page import="model.ConnectionProvider" %>
    <%String User=(String)session.getAttribute("Name"); %>
    <%
    String mid=request.getParameter("id");
    String path;
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="CSS/admin_header.css">
    
        <!-- font aswome link -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    
        <!-- bootstrap link -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    
</head>
<style>
        body {
            margin: 0;
            padding: 0;
            background-color: #141414; /* Dark gray background color */
            font-family: Arial, sans-serif;
        }
        
    </style>
<body>
<nav class="navbar  navbar-fixed-top navbar-expand-lg ">
            <div class="container-fluid" style="height:70px;">
              <a class="navbar-brand" href="#"><img src="img/logo.png"></a>
              <!-- <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button> -->
              <div class="collapse  navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="index_after_login.jsp">Home</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Link</a>
                  </li>
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                      Category
                    </a>
                    <ul class="dropdown-menu">
                      <li><a class="dropdown-item" href="#">Top Hollywood Movies</a></li>
                      <li><a class="dropdown-item" href="#">Best Horror Movies</a></li>
                      <li><a class="dropdown-item" href="#">Thriler And Action Movies</a></li>
                      <li><a class="dropdown-item" href="#">Romantic Movies</a></li>
                    </ul>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link active"  href="Subscription.jsp">Plan</a>
                  </li>
                 <li class="nav-item">
                  <form class="d-flex" role="search">
                    <input style="margin-left:120px;margin-top:5px;" class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button style="margin-top:5px;" class="btn btn-outline-success" type="submit">Search</button>
                  </form>
                </li>
               <!--   <li class="nav-item" style="margin-left:220px;">
                    <a class="nav-link active" aria-current="page" href="SignUp.jsp">Sign Up</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="login.jsp">Sign In</a>
                  </li>
                  -->
                  <li ><i class="fa fa-circle-user fa-xl" style="margin-left:120px;  margin-top:23px;color:white"></i>
                  </li>
                  <li class="nav-item">
                  <a class="nav-link" style="text-align:left;" href="#"><%=User%></a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="logout2.jsp">Log Out</a>
                  </li>
                </ul>
              </div>
            </div>
          </nav>
<%
Connection con;
PreparedStatement pstm;
ResultSet rs;
String name,type,dir,hero,lang,date,film;
try{
	con=ConnectionProvider.createC();
	pstm=con.prepareStatement("select * from movie where mv_id=?");
	
	pstm.setString(1,mid);
	rs=pstm.executeQuery();
	while(rs.next())
	{
		//mid=rs.getString(1);
		name=rs.getString(2);
		//mimg=rs.getString(7);
		type=rs.getString(3);
		dir=rs.getString(4);
		hero=rs.getString(5);
		lang=rs.getString(6);
		date=rs.getString(8);
		film=rs.getString(9);
		out.println("<br>");
		out.println("<br>");
		out.println("<br>");
		out.println("<br>");
		out.println("<div style='text-align:center'>");
		out.println("<video controls width=1000 height=500>");
		out.println("<source src="+"'"+film +"'"+">");
		out.println("</video>");
		out.println("</div>");
		out.println("<br/>");
		out.println("<h3 style=' margin-left:25px;color:#fff;'>Movie Name : "+" "+name+"</h3>");
		out.println("<h3 style=' margin-left:25px;color:#fff;'>Director : "+" "+dir+"</h3>");
		out.println("<h3 style=' margin-left:25px;color:#fff;'>Movie Type : "+" "+type+"</h3>");
		out.println("<h3 style=' margin-left:25px;color:#fff;'>Starcast : "+" "+hero+"</h3>");
		out.println("<h3 style=' margin-left:25px;color:#fff;'>Language : "+" "+lang+"</h3>");
		out.println("<h3 style=' margin-left:25px;color:#fff;'>Release Date : "+" "+date+"</h3>");
		//please give a description at bottom
	}
	
}catch (Exception e){}
%>
<jsp:include page="footer.html"/>
</body>
</html>