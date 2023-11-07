<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="model.ConnectionProvider" %>
    <%String User=(String)session.getAttribute("Name"); %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cinex</title>
    <link rel="icon" type="images/x-icon" href="img/logo.png">
    

     <meta charset="ISO-8859-1">
    <!-- Css Link -->
    <link rel="stylesheet" href="CSS/index.css">

    <!-- font aswome link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

    <!-- bootstrap link -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">


</head>
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
                    <a class="nav-link active" aria-current="page" href="#">Home</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Link</a>
                  </li>
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                      Category
                    </a>
                    <ul class="dropdown-menu">
                      <li><a class="dropdown-item text-black" href="#1">Top HollyWood Movies</a></li>
                      <li><a class="dropdown-item text-black" href="#2">Best Horror Movies</a></li>
                      <li><a class="dropdown-item text-black" href="#3">BollyWood Movies</a></li>
                      <li><a class="dropdown-item text-black" href="#4">Romantic Movies</a></li>
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
 
      <!-- home page -->

<!-- <section class="Swiper_container"> -->

<!-- </section> -->
<section class="pageWrapperSlide">
<div id="carouselExampleCaptions" class="carousel slide col-12" data-pause="false" data-interval="3000" data-bs-ride="carousel">
    <div class="carousel-indicators">
      <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
      <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
      <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
      <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="3" aria-label="Slide 4"></button>
      <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="4" aria-label="Slide 5"></button>
    </div>
    <div class="carousel-inner" >
      <div class="carousel-item active">
        <img src="img/poster1.avif" class="d-block w-100 " style="height: 750px;" alt="..." >
        <div class="carousel-caption d-none d-md-block">
          <h5>First slide label</h5>
          <p>Some representative placeholder content for the first slide.</p>
        </div>
      </div>
      <div class="carousel-item">
        <img src="img/poster2.jpg" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block">
          <h5>Second slide label</h5>
          <p>Some representative placeholder content for the second slide.</p>
        </div>
      </div>
      <div class="carousel-item">
        <img src="img/poster4.avif" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block">  
          <h5>Third slide label</h5>
          <p>Some representative placeholder content for the third slide.</p>
        </div>
      </div>
      <div class="carousel-item">
        <img src="img/poster6.jpg" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block">  
          <h5>Third slide label</h5>
          <p>Some representative placeholder content for the third slide.</p>
        </div>
      </div>
      <div class="carousel-item">
        <img src="img/poster7.jpg" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block">  
          <h5>Third slide label</h5>
          <p>Some representative placeholder content for the third slide.</p>
        </div>
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>
</section>
    


    

    

    <!-- service page -->

    <!-- body container start -->

    <section class="movies" id="movies">
        <h2 class="heading">Movie Verse</h2>


        <div class="container-fluid nextPage">
            <div class="row w-100 ">
                <div class="col justify-content-start ">
                    <div class="genre" id="1">Top HollyWood Movies</div>
                </div>
                <div class="col ml-10">
                    <button id="myButton1" class="float-right submit-button"><span>view more >></span></button>
                </div>
            </div>
            
          </div>

        <div class="movies-container1">
            
             <!--     <div class="box"> 
                    <div class="box-img">
                        <a href="#">
                        
                            <img src="img/hollywood_movies.webp" alt="img1">                   
                        </a>
                    </div>
                    <h3> Venom </h3>
                    <span> 120 min | Action </span>
                </div>-->
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
                	mpstm=mcon.prepareStatement("select * from movie where movie_type='HollyWood'");
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
                		out.println("<div class='box'>");
                        out.println("<div class='box-img'>");
                        out.println("<a href='movie_page.jsp?id="+mid+"'"+">");
                        out.println("<img src="+"'"+image+"'"+">");
                        out.println("</a>");
                        out.println("</div>");
                        out.println("<h3>"+mname.toUpperCase()+"</h3>");
                        out.println("<span>"+mtype+" | "+mlang+"</span>");
                        out.println("</div>");
                	}
                }catch (Exception e){}
                %>
        <!-- movie container -->
		<!--
            <div class="box">
                <div class="box-img">
                    <img src="img/HW_M2.webp" alt="img1">
                </div>
                <h3> Venom </h3>
                <span> 120 min | Action </span>
            </div>

            <div class="box">
                <div class="box-img">
                    <img src="img/HW_M3.webp" alt="img1">
                </div>
                <h3> Venom </h3>
                <span> 120 min | Action </span>
            </div>

            <div class="box">
                <div class="box-img">
                    <img src="img/HW_M4.webp" alt="img1">
                </div>
                <h3> Venom </h3>
                <span> 120 min | Action </span>
            </div>

            <div class="box">
                <div class="box-img">
                    <img src="img/HW_M5.webp" alt="img1">
                </div>
                <h3> Venom </h3>
                <span> 120 min | Action </span>
            </div>
            
            <div class="box">
                <div class="box-img">
                    <img src="img/HW_M6.webp" alt="img1">
                </div>
                <h3> Venom </h3>
                <span> 120 min | Action </span>
            </div> -->

            <!-- <div class="box">
                <div class="box-img">
                    <img src="img/HW_M7.webp" alt="img1">
                </div>
                <h3> Venom </h3>
                <span> 120 min | Action </span>
            </div> -->

        </div>

        <div class="container-fluid nextPage m-0">
            <div class="row w-100">
                <div class="col justify-content-start">
                    <div class="genre" id="2">Best Horror Movies</div>
                </div>
                <div class="col">
                    <button id="myButton1" class="float-right submit-button"><span>view more >></span></button>
            </div>
        </div>
            
          
        </div>

        <!-- container 2 -->
        <div class="movies-container2">

            <!-- <button id="myButton" class="float-left submit-button" >Home</button> -->
			<%
                String hid=null;
                String hname=null;
                String himg=null;
                String htype=null;
                String hdir=null;
                String hhero=null;
                String hlang=null;
                String hdate=null;
                Connection hcon=null;
                PreparedStatement hpstm=null;
                ResultSet hrs=null;
                try{
                	hcon=ConnectionProvider.createC();
                	hpstm=hcon.prepareStatement("select * from movie where movie_type='Horror'");
                	hrs=hpstm.executeQuery();
                	while(hrs.next())
                	{
                		hid=hrs.getString(1);
                		hname=hrs.getString(2);
                		himg=hrs.getString(7);
                		htype=hrs.getString(3);
                		hdir=hrs.getString(4);
                		hhero=hrs.getString(5);
                		hlang=hrs.getString(6);
                		hdate=hrs.getString(8);
                		String himage="movie/"+himg;
                		out.println("<div class='box'>");
                        out.println("<div class='box-img'>");
                        out.println("<a href='movie_page.jsp?id="+hid+"'"+">");
                        out.println("<img src="+"'"+himage+"'"+">");
                        out.println("</a>");
                        out.println("</div>");
                        out.println("<h3>"+hname.toUpperCase()+"</h3>");
                        out.println("<span>"+htype+" | "+hlang+"</span>");
                        out.println("</div>");
                	}
                }catch (Exception e){}
                %>
			<!--  
            <div class="box">
                <div class="box-img">
                    <img src="img/Horror_M1.webp" alt="img1">
                </div>
                <h3> Venom </h3>
                <span> 120 min | Action </span>
            </div>

            <div class="box">
                <div class="box-img">
                    <img src="img/Horror_M2.webp" alt="img1">
                </div>
                <h3> Venom </h3>
                <span> 120 min | Action </span>
            </div>

            <div class="box">
                <div class="box-img">
                    <img src="img/Horror_M3.webp" alt="img1">
                </div>
                <h3> Venom </h3>
                <span> 120 min | Action </span>
                </div>
                

    

            
                <div class="box">
                    <div class="box-img">
                        <img src="img/Horror_M4.webp" alt="img1">
                    </div>
                    <h3> Venom </h3>
                    <span> 120 min | Action </span>
                </div>

                <div class="box">
                    <div class="box-img">
                        <img src="img/Horror_M5.webp" alt="img1">
                    </div>
                    <h3> Venom </h3>
                    <span> 120 min | Action </span>
                </div>

                <div class="box">
                    <div class="box-img">
                        <img src="img/Horror_M6.webp" alt="img1">
                    </div>
                    <h3> Venom </h3>
                    <span> 120 min | Action </span>
                </div>
        		-->

                <!-- <div class="box">
                    <div class="box-img">
                        <img src="img/pic1.jpg" alt="img1">
                    </div>
                    <h3> Venom </h3>
                    <span> 120 min | Action </span>
                </div> -->
        </div>   

        <div class="container-fluid nextPage">
            <div class="row w-100 ">
                <div class="col justify-content-start ">
                    <div class="genre" id="3">BollyWood Movies</div>
                </div>
                <div class="col ml-10">
                    <button id="myButton1" class="float-right submit-button"><span>view more >></span></button>
                </div>
            </div>
            
          </div>
        

        <div class="movies-container3">
        <%
                String bid=null;
                String bname=null;
                String bimg=null;
                String btype=null;
                String bdir=null;
                String bhero=null;
                String blang=null;
                String bdate=null;
                Connection bcon=null;
                PreparedStatement bpstm=null;
                ResultSet brs=null;
                try{
                	bcon=ConnectionProvider.createC();
                	bpstm=bcon.prepareStatement("select * from movie where movie_type='Bollywood'");
                	brs=bpstm.executeQuery();
                	while(brs.next())
                	{
                		bid=brs.getString(1);
                		bname=brs.getString(2);
                		bimg=brs.getString(7);
                		btype=brs.getString(3);
                		bdir=brs.getString(4);
                		bhero=brs.getString(5);
                		blang=brs.getString(6);
                		bdate=brs.getString(8);
                		String bimage="movie/"+bimg;
                		out.println("<div class='box'>");
                        out.println("<div class='box-img'>");
                        out.println("<a href='movie_page.jsp?id="+bid+"'"+">");
                        out.println("<img src="+"'"+bimage+"'"+">");
                        out.println("</a>");
                        out.println("</div>");
                        out.println("<h3>"+bname.toUpperCase()+"</h3>");
                        out.println("<span>"+btype+" | "+blang+"</span>");
                        out.println("</div>");
                	}
                }catch (Exception e){}
                %>
		
        </div>

        <div class="container-fluid nextPage">
            <div class="row w-100 ">
                <div class="col justify-content-start ">
                    <div class="genre" id="4">Romantic Movies</div>
                </div>
                <div class="col ml-10">
                    <button id="myButton1" class="float-right submit-button"><span>view more >></span></button>
                </div>
            </div>
            
          </div>
        

        <div class="movies-container4">
        <%
                String rid=null;
                String rname=null;
                String rimg=null;
                String rtype=null;
                String rdir=null;
                String rhero=null;
                String rlang=null;
                String rdate=null;
                Connection rcon=null;
                PreparedStatement rpstm=null;
                ResultSet rrs=null;
                try{
                	rcon=ConnectionProvider.createC();
                	rpstm=rcon.prepareStatement("select * from movie where movie_type='Romantic'");
                	rrs=rpstm.executeQuery();
                	while(rrs.next())
                	{
                		rid=rrs.getString(1);
                		rname=rrs.getString(2);
                		rimg=rrs.getString(7);
                		rtype=rrs.getString(3);
                		rdir=rrs.getString(4);
                		rhero=rrs.getString(5);
                		rlang=rrs.getString(6);
                		rdate=rrs.getString(8);
                		String rimage="movie/"+rimg;
                		out.println("<div class='box'>");
                        out.println("<div class='box-img'>");
                        out.println("<a href='movie_page.jsp?id="+rid+"'"+">");
                        out.println("<img src="+"'"+rimage+"'"+">");
                        out.println("</a>");
                        out.println("</div>");
                        out.println("<h3>"+rname.toUpperCase()+"</h3>");
                        out.println("<span>"+rtype+" | "+rlang+"</span>");
                        out.println("</div>");
                	}
                }catch (Exception e){}
                %>
			
			<!--  
                <div class="box">
                    <div class="box-img">
                        <img src="img/pic1.jpg" alt="img1">
                    </div>
                    <h3> Venom </h3>
                    <span> 120 min | Action </span>
                </div>

                <div class="box">
                    <div class="box-img">
                        <img src="img/pic1.jpg" alt="img1">
                    </div>
                    <h3> Venom </h3>
                    <span> 120 min | Action </span>
                </div>

                <div class="box">
                    <div class="box-img">
                        <img src="img/pic1.jpg" alt="img1">
                    </div>
                    <h3> Venom </h3>
                    <span> 120 min | Action </span>
                </div>

                <div class="box">
                    <div class="box-img">
                        <img src="img/pic1.jpg" alt="img1">
                    </div>
                    <h3> Venom </h3>
                    <span> 120 min | Action </span>
                </div>

                <div class="box">
                    <div class="box-img">
                        <img src="img/.jpg" alt="img1">
                    </div>
                    <h3> Venom </h3>
                    <span> 120 min | Action </span>
                </div>

                <div class="box">
                    <div class="box-img">
                        <img src="img/pic1.jpg" alt="img1">
                    </div>
                    <h3> Venom </h3>
                    <span> 120 min | Action </span>
                </div>

                <div class="box">
                    <div class="box-img">
                        <img src="img/pic1.jpg" alt="img1">
                    </div>
                    <h3> Venom </h3>
                    <span> 120 min | Action </span>
                </div>
                -->

        </div>



            </div>
        </div>


        

        </div>

    
    </section>

    
    
    <%@ include file="footer.html" %>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

  <script type="text/javascript">
    document.getElementById("myButton").onclick = function () {
        location.href = "horror.html";
    };

    document.getElementById("myButton1").onclick = function () {
        location.href = "horror.html";
    };

    document.getElementById("myButton2").onclick = function () {
        location.href = "horror.html";
    };
</script>



</body>
</html>