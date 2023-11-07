<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="model.ConnectionProvider" %>
<!DOCTYPE html>
<html>
  <head>
  	<title>Admin Panel</title>
  	<link rel="icon" type="images/x-icon" href="img/logo.png">
  	
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta charset="ISO-8859-1">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="CSS/admindashboard.css">
		<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="https://pixinvent.com/stack-responsive-bootstrap-4-admin-template/app-assets/css/bootstrap-extended.min.css">
    <link rel="stylesheet" type="text/css" href="https://pixinvent.com/stack-responsive-bootstrap-4-admin-template/app-assets/fonts/simple-line-icons/style.min.css">
    <link rel="stylesheet" type="text/css" href="https://pixinvent.com/stack-responsive-bootstrap-4-admin-template/app-assets/css/colors.min.css">
    <link rel="stylesheet" type="text/css" href="https://pixinvent.com/stack-responsive-bootstrap-4-admin-template/app-assets/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/fbecb06064.js" crossorigin="anonymous"></script>
 <style>
 
	     .grey-bg {  
	 background-color: #F5F7FA;
	 }
table {
    /*border:2px solid black;*/
   /* border-style: dashed;*/
    border-radius: 20px;
    /* box-shadow:8px 8px 8px red, -8px -8px 8px red; */
}

table tr td {
    border-color: black;
}

.wrp1{
    max-width:fit-content;
    min-height:10px;
    margin:27px auto;
}

.btn{
    height:fit-content;
    border:2px solid black;
    background-color: silver;
    color:black;
    font-weight: 600;
    
}

.btn:hover{
  background-color: rgb(14, 66, 139);
  color:white;
}

.modal {
    display: none;
    position: absolute; /* Stay in place */
    z-index: 10040; 
    left: 0;
    top: 0;
    height: 100%; 
    overflow:hidden; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  }
  
  /* Modal Content/Box */
  .modal-content {
    background-color: #fefefe;
    margin: 2% auto; /* 15% from the top and centered */
    padding: 20px;
    border: 1px solid #888;
    width: 30%; /* Could be more or less, depending on screen size */
    font-size: large;
    font-weight: bold;
    animation: growDown 400ms ease-in-out forwards;
    transform-origin: top center;
  }
  
  /* The Close Button */
  .close {
    color: #aaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
    margin-left:40px;
  }
  
  .close:hover,
  .close:focus {
    color: black;
    text-decoration: none;
    cursor: pointer;
  }

  .modal-content table tr td input[type="text"], input[type="email"], input[type="password"]{
    display:block;
    margin-left:10px;
    width:100%;
  }

  .modal-content table tr{
    height:40px;  
  }

.btn2 {
    display: block;
    height:fit-content;
    min-width:100px;
    border-radius:5px;
}
.btn2 input[type="submit"], input[type="reset"]{
    margin:0px;
}

/*Upload Movie Css*/
.modal1 {
    display: none;
    position: absolute; /* Stay in place */
    z-index: 10040; 
    left: 0;
    top: 0;
    width: 100%; 
    height: 100%; 
    overflow:hidden; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  }
  
  /* Modal Content/Box */
  .modal-content1 {
    /* transform: translateY(-50%)!important; */
    background-color: #fefefe;
    margin: 2% auto; /* 15% from the top and centered */
    padding: 20px;
    padding-top:30px;
    border: 1px solid #888;
    width: 30%; /* Could be more or less, depending on screen size */
    font-size: large;
    font-weight: bold;
    animation: growDown 400ms ease-in-out forwards;
    transform-origin: top center;
  }

  @keyframes growDown {
    0% {
        transform: scaleY(0)
    }
    80% {
        transform: scaleY(1.1)
    }
    100% {
        transform: scaleY(1)
    }
}
  
  /* The Close Button */
  .close1 {
    color: #aaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
    margin-left:40px;
    border:none;
    background-color: transparent;
  }
  
  .close1:hover,
  .close1:focus {
    color: black;
    text-decoration: none;
    cursor: pointer;
  }

  .modal-content1 table tr td input[type="text"], input[type="date"]{
    display:block;
    margin-left:10px;
    width:100%;
  }

  .modal-content1 table tr{
    height:50px;  
  }

.btn2 {
    display: block;
    height:fit-content;
    min-width:100px;
    border-radius:5px;
}
.btn2 input[type="submit"], input[type="reset"]{
    margin:0px;
}

/*Modal for Admin Updation CSS*/
.modal3 {
    display: none;
    position: absolute; /* Stay in place */
    z-index: 10040; 
    left: 0;
    top: 0;
    width: 100%; 
    height: 100%; 
    overflow:hidden; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  }
  
  /* Modal Content/Box */
  .modal-content3 {
    /* transform: translateY(-50%)!important; */
    background-color: #fefefe;
    margin: 2% auto; /* 15% from the top and centered */
    padding: 20px;
    padding-top:30px;
    border: 1px solid #888;
    width: 30%; /* Could be more or less, depending on screen size */
    font-size: large;
    font-weight: bold;
    animation: growDown 400ms ease-in-out forwards;
    transform-origin: top center;
  }

  @keyframes growDown {
    0% {
        transform: scaleY(0)
    }
    80% {
        transform: scaleY(1.1)
    }
    100% {
        transform: scaleY(1)
    }
}
  
  /* The Close Button */
  .close3 {
    color: #aaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
    margin-left:40px;
    border:none;
    background-color: transparent;
  }
  
  .close3:hover,
  .close3:focus {
    color: black;
    text-decoration: none;
    cursor: pointer;
  }

  .modal-content3 table tr td input[type="text"], input[type="date"]{
    display:block;
    margin-left:10px;
    width:100%;
  }

  .modal-content3 table tr{
    height:50px;  
  }

.btn2 {
    display: block;
    height:fit-content;
    min-width:100px;
    border-radius:5px;
}
.btn2 input[type="submit"], input[type="reset"]{
    margin:0px;
}


/*subscription */
        .wrapper2{
            margin:0px 10px 0px 10px;
        }

        .plan-container{
            
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            /* height: auto; */
            /* width:600px; */
            /* top:4rem; */
        }
        
        .header1{
            /* display: flex; */
            color: #333;
            text-align: center;
            margin: auto;
            font-size: 60px;
            font-weight: 500;
            margin-top: -30px;
            
        }
        .header2{
            color:#b4afaf;
            /* position: relative; */
            /* top: 5rem; */
            /* height: auto; */
            display:flex;
            align-items: center;
            justify-content: center;
            margin-top: 1rem;
            margin-bottom: 2rem;
            font-size: 20px;
            font-weight: 500; 
        }

		.header21{
            color:black;
            /* position: relative; */
            /* top: 5rem; */
            /* height: auto; */
            display:flex;
            align-items: center;
            justify-content: center;
            margin-top: 1rem;
            margin-bottom: 2rem;
            font-size: 20px;
            font-weight: 500; 
        }
		
        .title-container {
        align-items: center;
        display: flex;
        justify-content: center;
        margin-top: 40px;
        max-width: 900px;
        overflow-x: auto;
        }
        .plan-title {
        background-color: rgb(218, 216, 201);
        border: 2px solid red;
        border-radius: 10px;
        margin-right: 40px;
        }
        [role=button]{
            cursor: pointer;
        }
        
        .plan-parent{
            padding: 30px;
        }
        .plan-title-title{
            display: flex;
            align-items: left;
            /* justify-content: center; */
            font-size: 30px;
            margin-top: 20px;
            font-weight:bolder;
            text-decoration: underline;
        }
        .feature-list{
            list-style: none;
            margin-top: 20px;
            text-align: left;
            padding: 0;
        }
        .item1{
            font-size: 22px;
            font-weight: 400;
            margin-bottom: 10px;
            color: black;
            font-weight:600;
        }

        .price-container{
        /* padding: 5px; */
        align-items: center;
        display: flex;
        justify-content: center;
        margin-bottom: 30px;
        margin-top: 30px;
        }
        
        .plan-price{
            padding: 5px;
        color: black;
        font-size: 28px;
        font-weight: 600;
        margin-right: 10px;
        }
        .final-btn{
            margin-top: 1.8rem;
            display: flex;
            align-items: center;
            justify-content: center;
            /* border: 2px solid red; */

        }
        .plan-select-btn{
            background-color: red;
            border-radius: 7px;
            border: 2px solid red;
            padding: 20px;
            color: #fff;
            font-size: 23px;
            font-weight: 700;
        }

        .plan-select-btn:hover{
            background-color:white;
            color:red;
            /* border:1px solid red; */
        }
    </style>
    <script>

    function show_hide()
    {
      document.getElementById("sh").style.display="contents";
      document.getElementById("sh2").style.display="none";
      document.getElementById("sh4").style.display="none";
      document.getElementById("sh5").style.display="none";
      document.getElementById("sh0").style.display="none";
    }

    function show_hide1()
    {
      document.getElementById("sh2").style.display="contents";
      document.getElementById("sh").style.display="none";
      document.getElementById("sh4").style.display="none";
      document.getElementById("sh5").style.display="none";
      document.getElementById("sh0").style.display="none";
    }

    
    function show_hide3()
    {
      document.getElementById("sh4").style.display="contents";
      document.getElementById("sh").style.display="none";
      document.getElementById("sh2").style.display="none";
      document.getElementById("sh5").style.display="none";
      document.getElementById("sh0").style.display="none";
    }
    
    function show_hide4()
    {
      document.getElementById("sh5").style.display="contents";
      document.getElementById("sh").style.display="none";
      document.getElementById("sh2").style.display="none";
      document.getElementById("sh4").style.display="none";
      document.getElementById("sh0").style.display="none";
    }
    
    function show_hide5()
    {
      document.getElementById("sh0").style.display="contents";
      document.getElementById("sh").style.display="none";
      document.getElementById("sh2").style.display="none";
      document.getElementById("sh4").style.display="none";
      document.getElementById("sh5").style.display="none";
    }
    </script>  
  </head>
  <body>
		<div class="wrapper d-flex align-items-stretch">
			<nav id="sidebar" style="position:fixed">
	  		<h1><a href="index.html" class="logo">&nbsp;&nbsp;&nbsp;&nbsp;ADMIN PANEL</a></h1>
        <ul class="list-unstyled components mb-5">
          <li class="active">
            <a href="#" onclick="show_hide5()"><span class="fa fa-home mr-3"></span><font style="font-family:arial;">Homepage</font></a>
          </li>
          <li>
              <a href="#" onclick="show_hide()" style="margin-left:3px;"><span class="fa fa-upload fa-beat-fade mr-4"></span><font style="font-family:arial;">Upload Movies</font></a>
          </li>
          <li>
            <a href="#" onclick="show_hide1()"><span class="fa fa-users fa-beat-fade mr-3"></span><font style="font-family:arial;">Active Members</font></a>
          </li>
          <li>
            <a href="#" onclick="show_hide3()"><i class="fa-solid fa-credit-card fa-beat-fade mr-3"></i>&nbsp;<font style="font-family:arial;">Transactions</font></a>
          </li>
          <li>
            <a href="#" onclick="show_hide4()"><i class="fa-solid fa-user-plus fa-beat-fade mr-3"></i>&nbsp;<font style="font-family:arial;">Add Admin</font></a>
          </li>
          <li>
            <a href="logout.jsp"><i class="fa-solid fa-right-from-bracket fa-beat-fade mr-3"></i>&nbsp;<font style="font-family:arial;">Log Out</font></a>
          </li>
        </ul>

    	</nav>

        <!-- Page Content  -->
        <div id="sh0"  class="p-4 p-md-5 pt-5 text-center" style="display:contents">
        <div class="inner-div mt-1" style="margin-left:293px; width:1200px;">
          <h2 class="mb-4"></h2>
          
          <%
          String Name=(String)session.getAttribute("Name");
          String Email=(String)session.getAttribute("Email");
          %>
          
          <h1><i class="fa-solid fa-circle-user fa-2xl"></i></h1>
          <h1>Welcome <%=Name%></h1>
          <h5><i class="fa-solid fa-envelope"></i>&nbsp;<%=Email%></h5>
          <br>
          <br>
          
          <div class="row grey-bg " >
      <div class="col-xl-3 col-sm-6 col-12"> 
        <div class="card">
          <div class="card-content">
            <div class="card-body">
              <div class="media d-flex">
                <div class="align-self-center">
                  <i class="icon-user primary font-large-2 float-left"></i>
                </div>
                <div class="media-body text-right">
                  <h3>278</h3>
                  <span>Active Users</span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-xl-3 col-sm-6 col-12">
        <div class="card">
          <div class="card-content">
            <div class="card-body">
              <div class="media d-flex">
                <div class="align-self-center">
                  <i class="icon-film warning font-large-2 float-left"></i>
                </div>
                <div class="media-body text-right">
                  <h3>156</h3>
                  <span>Total Movies</span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-xl-3 col-sm-6 col-12">
        <div class="card">
          <div class="card-content">
            <div class="card-body">
              <div class="media d-flex">
                <div class="align-self-center">
                  <i class="icon-bell success font-large-2 float-left"></i>
                </div>
                <div class="media-body text-right">
                  <h3>64.89 %</h3>
                  <span>Subscribers</span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-xl-3 col-sm-6 col-12">
        <div class="card">
          <div class="card-content">
            <div class="card-body">
              <div class="media d-flex">
                <div class="align-self-center">
                  <i class="icon-graph danger font-large-2 float-left"></i>
                </div>
                <div class="media-body text-right">
                  <h3>423</h3>
                  <span>Total Transactions</span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
        </div>
        </div>
		
      <div id="sh" style="border:2px solid red;display:none;overflow:hidden;" class="p-4 p-md-5 pt-5">
        <h2 class="mb-4"></h2>
        <div class="inner-div mt-1" style="margin-left:287px; width:1300px;">	
        <h1 class="text-center">Upload Movies</h1>
        <table class="table">
   <thead class="thead-dark">
     <tr>
       <th scope="col">Movie Id</th>
       <th scope="col">Movie Name</th>
       <th scope="col">Movie Banner</th>
       <th scope="col">Movie Type</th>
       <th scope="col">Director</th>
       <th scope="col">StarCast</th>
       <th scope="col">Language</th>
       <th scope="col">Release Date</th>
       <th scope="col">Edit</th>
     </tr>
   </thead>
   <tbody>
   <%
String mid=null;
String mname=null;
String mimg=null;
String mtype=null;
String mdir=null;
String mhero=null;
String mlang=null;
String mdate=null;
Connection mcon=null;
PreparedStatement mpstm=null;
ResultSet mrs=null;
try{
	mcon=ConnectionProvider.createC();
	mpstm=mcon.prepareStatement("select * from movie");
	mrs=mpstm.executeQuery();
	while(mrs.next())
	{
		mid=mrs.getString(1);
		mname=mrs.getString(2);
		mimg=mrs.getString(7);
		mtype=mrs.getString(3);
		mdir=mrs.getString(4);
		mhero=mrs.getString(5);
		mlang=mrs.getString(6);
		mdate=mrs.getString(8);
		String image="movie/"+mimg;
		out.println("<tr>");
        out.println("<td>"+mid+"</td>");
        out.println("<td>"+mname+"</td>");
        out.println("<td>"+"<img src="+"'"+image+"'" +"height='50px' width='50px'>"+"</td>");
        out.println("<td>"+mtype+"</td>");
        out.println("<td>"+mdir+"</td>");
        out.println("<td>"+mhero+"</td>");
        out.println("<td>"+mlang+"</td>");
        out.println("<td>"+mdate+"</td>");
        out.println("<td>");
        out.println("<a href='delete_movie.jsp?msg=" + mid + "'><div class='btn btn-danger'>Delete</div></a>");
        out.println("</td>");
      out.println("</tr>");
	}
}catch (Exception e){}
%>
   </tbody>
 </table>
 <a href="#"><button style="float:right;margin-right:20px;" type="button" class="btn btn-success mb-1" id="bt2">ADD MOVIES</button></a>
        </div>

        <!-- Modal + Form Area -->

    <div id="myModal1" class="modal1">
      <div class="modal-content1">
        <div>
          <button class="close1">&times;</button>
        </div>
          <form action="VideoUploader" method="post">
            <table style="border:none;">
              <tr>
                <td>Movie ID</td>
                <td>
                  <input type="text" placeholder="001" name="mid" >
                </td>
              </tr>
              <tr>
                <td>Movie Name</td>
                <td>
                  <input type="text" placeholder="Need For Speed" name="mname" >
                </td>
              </tr>

              <tr>
                <td>Movie Type</td>
                <td>
                  <input type="text" placeholder="action/sci-fi" name="mtype" >
                </td>
              </tr>

              <tr>
                <td>Director</td>
                <td>
                  <input type="text" name="mdir" >
                </td>
              </tr>

              <tr>
                <td>StarCast</td>
                <td>
                  <input type="text" placeholder="Tom Holland" name="mhero" >
                </td>
              </tr>

              <tr>
                <td>Language</td>
                <td>
                  <input type="text" placeholder="English/Spanish" name="mlang">
                </td>
              </tr>
			  <tr>
                <td>Upload Movie Banner</td>
                <td>
                  <input type="file" name="mimg">
                </td>
              </tr>
              <tr>
                <td>Upload Movie</td>
                <td>
                  <input type="file" name="mupload">
                </td>
              </tr> 
              <tr>
                <td>Release Date</td>
                <td>
                  <input type="date" name="mdate">
                </td>
              </tr>

              </table>

              <!-- Button Submit/Reset Area -->

            <table style="border:none;margin-left:103px;">
                <tr style="margin-left:70px;">
                  <td>
                    <input type="submit" name="ok" value="Submit" class="btn2 btn-outline-success mt-3">
                  </td>
                  <td>
                    <input type="reset" name="ok" value="Reset" class="btn2 btn-outline-danger mt-3 ml-2">
                  </td>
                </tr>
            </table>
              
          </form>
      </div>
  </div>
      </div>

      <div id="sh2" style="border:2px solid red; display:none;" class="p-4 p-md-5 pt-5 text-center">
           
        <div class="inner-div mt-1" style="margin-left:293px; width:1282px;">
          <h1>Active Members</h1>
          <table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Phone No</th>
      <th scope="col">City</th>
      <th scope="col">Gender</th>
      <th scope="col">Password</th>
      <th scope="col">Edit</th>
    </tr>
  </thead>
  <tbody>
  <%
String name=null;
String email=null;
String phone=null;
String city=null;
String gender=null;
String pass=null;
Connection ucon=null;
PreparedStatement upstm=null;
ResultSet urs=null;
try{
	ucon=ConnectionProvider.createC();
	upstm=ucon.prepareStatement("select * from user");
	urs=upstm.executeQuery();
	while(urs.next())
	{
		name=urs.getString(1);
		email=urs.getString(2);
		phone=urs.getString(3);
		city=urs.getString(4);
		gender=urs.getString(5);
		pass=urs.getString(6);
		out.println("<tr>");
        out.println("<td>"+name+"</td>");
        out.println("<td>"+email+"</td>");
        out.println("<td>"+phone+"</td>");
        out.println("<td>"+city+"</td>");
        out.println("<td>"+gender+"</td>");
        out.println("<td>"+pass+"</td>");
        out.println("<td>");
        out.println("<a href='delete_user.jsp?msg=" + email + "'><div class='btn btn-danger'>Delete</div></a>");
        out.println("</td>");
      out.println("</tr>");
	}
}catch (Exception e){}
%>
  </tbody>
</table>
        </div>
      </div>

      

      <div id="sh4" style="border:2px solid red;display:none;" class="p-4 p-md-5 pt-5 text-center">
        <h2 class="mb-4"></h2>
        <div class="inner-div mt-1" style="margin-left:293px; width:1282px;">
        <h1>Transactions</h1>
         <table class="table">
   <thead class="thead-dark">
     <tr>
       <th scope="col">Depositor Name</th>
       <th scope="col">Card Number</th>
       <th scope="col">Card Expiry</th>
       <th scope="col">Card CVV Code</th>
       <th scope="col">Bank Name</th>
       <th scope="col">Subscription Plan</th>
       <th scope="col">Edit</th>
     </tr>
   </thead>
   <tbody>
   <%
String dname=null;
String cno=null;
String expiry=null;
String cvv=null;
String bank=null;
String plan=null;
Connection tcon=null;
PreparedStatement tpstm=null;
ResultSet trs=null;
try{
	tcon=ConnectionProvider.createC();
	tpstm=tcon.prepareStatement("select * from transaction");
	trs=tpstm.executeQuery();
	while(trs.next())
	{
		name=trs.getString(1);
		cno=trs.getString(2);
		expiry=trs.getString(3);
		cvv=trs.getString(4);
		bank=trs.getString(5);
		plan=trs.getString(6);
		out.println("<tr>");
        out.println("<td>"+name+"</td>");
        out.println("<td>"+cno+"</td>");
        out.println("<td>"+expiry+"</td>");
        out.println("<td>"+cvv+"</td>");
        out.println("<td>"+bank+"</td>");
        out.println("<td>"+plan+"</td>");
        out.println("<td>");
        out.println("<a href='delete_transaction.jsp?cno=" + cno + "'><div class='btn btn-danger'>Delete</div></a>");
        out.println("</td>");
      	out.println("</tr>");
	}
}catch (Exception e){}
%>
   </tbody>
 </table>
 
        </div>
      </div>

      <div id="sh5" style="border:2px solid red;display:none;" class="p-4 p-md-5 pt-5 text-center">
        <h2 class="mb-4"></h2>
        
    <div class="inner-div mt-1" style="margin-left:293px; width:1282px;">
    <h1>Available Admins</h1>
    <table class="table" >
        <thead class="thead-dark">
          <tr>
            <th scope="col">Name</th>
            <th scope="col">Phone Number</th>
            <th scope="col">Email</th>
            <th scope="col">Password</th>
            <th scope="col">Action</th>
          </tr>
        </thead>
        <tbody>
<%
String aname=null;
String aphone=null;
String aemail=null;
String apass=null;
Connection acon=null;
PreparedStatement apstm=null;
ResultSet ars=null;
try{
	acon=ConnectionProvider.createC();
	apstm=acon.prepareStatement("select * from admin");
	ars=apstm.executeQuery();
	while(ars.next())
	{
		email=ars.getString(1);
		name=ars.getString(2);
		phone=ars.getString(3);
		pass=ars.getString(5);
		out.println("<tr>");
        out.println("<td>"+name+"</td>");
        out.println("<td>"+phone+"</td>");
        out.println("<td>"+email+"</td>");
        out.println("<td>"+pass+"</td>");
        out.println("<td>");
        //out.println("<a href='update_admin.jsp?email=" + email + "'><div class='btn btn-success'>Update</div></a>");
        out.println("<a href='delete_admin.jsp?email=" + email + "'><div class='btn btn-danger'>Delete</div></a>");
        out.println("</td>");
      out.println("</tr>");
	}
}catch (Exception e){}
%>
        
          
        </tbody>
      </table>
      <div class="wrapper wrp1">
        <button class="btn mb-1" id="bt1">Add Admin</button>
    </div>
    </div>

    <!-- Add Admin Button Area -->

    

    <!-- Modal + Form Area -->

    <div id="myModal" class="modal">
        <div class="modal-content ">
          <div>
            <button class="close">&times;</button>
          </div>
            <form action="Admin_insert" method="post" class="form-field">
              <table style="border:none;">
                <tr>
                  <td>Username</td>
                  <td>
                    <input type="text" placeholder="ABC" name="aname" required>
                  </td>
                </tr>
				<tr>
                  <td>Email</td>
                  <td>
                    <input type="email" placeholder="abc@gmail.com" name="aemail" required>
                  </td>
                </tr>
                <tr>
                  <td>City</td>
                  <td>
                    <input type="text" placeholder="Kolkata" name="acity" required>
                  </td>
                </tr>
                <tr>
                  <td>Phone Number</td>
                  <td>
                    <input type="text" placeholder="9685745863" name="aphno" required>
                  </td>
                </tr>
                <tr>
                  <td>Password</td>
                  <td>
                    <input type="password" name="apass" required>
                  </td>
                </tr>
                </table>

                <!-- Button Submit/Reset Area -->

              <table style="border:none;margin-left:103px;">
                  <tr style="margin-left:70px;">
                    <td>
                      <input type="submit" name="ok" value="Submit" class="btn2 btn-outline-success mt-3">
                    </td>
                    <td>
                      <input type="reset" name="ok" value="Reset" class="btn2 btn-outline-danger mt-3 ml-2">
                    </td>
                  </tr>
              </table>
            </form>
        </div>
    </div>
      </div>       
</div>
<!-- Script for Add Admin Section-->
<script>
        // Get the modal
    var modal = document.getElementById("myModal");
    
    // Get the button that opens the modal
    var bttn = document.getElementById("bt1");
    
    // Get the <span> element that closes the modal
    var button = document.getElementsByClassName("close")[0];
    
    // When the user clicks on the button, open the modal
    bttn.onclick = function() {
      modal.style.display = "block";
    }
    
    // When the user clicks on <span> (x), close the modal
    button.onclick = function() {
      modal.style.display = "none";
    }
    
    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
      if (event.target == modal) {
        modal.style.display = "none";
      }
    }
    
    //upload Movie
    var modal1 = document.getElementById("myModal1");

// Get the button that opens the modal
var bttn1 = document.getElementById("bt2");

// Get the <span> element that closes the modal
var button = document.getElementsByClassName("close1")[0];

// When the user clicks on the button, open the modal
bttn1.onclick = function() {
  modal1.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
button.onclick = function() {
  modal1.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal1) {
    modal1.style.display = "none";
  }
}
</script>

<!-- Modal for Admin Updation -->
<div id="myModal3" class="modal3">
        <div class="modal-content3 ">
          <div>
            <button class="close3">&times;</button>
          </div>
            <form action="update_admin.jsp" method="post" class="form-field">
              <table style="border:none;">
                <tr>
                  <td>Username</td>
                  <td>
                    <input type="text" placeholder="abc" name="auname" required> <!-- Value from db will be inserted here -->
                  </td>
                </tr>
				<tr>
                  <td>Email</td>
                  <td>
                    <input type="email" placeholder="abc@gmail.com" name="auemail" required>
                  </td>
                </tr>
                <tr>
                  <td>City</td>
                  <td>
                    <input type="text" placeholder="Kolkata" name="aucity" required>
                  </td>
                </tr>
                <tr>
                  <td>Phone Number</td>
                  <td>
                    <input type="text" placeholder="9685745863" name="auphno" required>
                  </td>
                </tr>
                <tr>
                  <td>Password</td>
                  <td>
                    <input type="password" name="aupass" required>
                  </td>
                </tr>
                </table>

                <!-- Button Submit/Reset Area -->

              <table style="border:none;margin-left:103px;">
                  <tr style="margin-left:70px;">
                    <td>
                      <input type="submit" name="ok" value="Submit" class="btn2 btn-outline-success mt-3">
                    </td>
                    <td>
                      <input type="reset" name="ok" value="Reset" class="btn2 btn-outline-danger mt-3 ml-2">
                    </td>
                  </tr>
              </table>
            </form>
        </div>
    </div>

<!-- Script for Update Admin Section-->
<script>
        // Get the modal
    var modal3 = document.getElementById("myModal3");
    
    // Get the button that opens the modal
    var bttn3 = document.getElementById("bt4");
    
    // Get the <span> element that closes the modal
    var button = document.getElementsByClassName("close3")[0];
    
    // When the user clicks on the button, open the modal
    bttn3.onclick = function() {
      modal3.style.display = "block";
    }
    
    // When the user clicks on <span> (x), close the modal
    button.onclick = function() {
      modal3.style.display = "none";
    }
    
    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
      if (event.target == modal3) {
        modal3.style.display = "none";
      }
    }
    </script>
</body>
</html>