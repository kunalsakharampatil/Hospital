
<%@page import="com.db.DBConnect" %>
<%@page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1"><title>index page</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">
	
<link rel="stylesheet" href="./index.css">

<%@include file="component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
.container{
font-family: 'Elephant';
}
.kp {

            margin: 0;
            padding: 0;
            display: flex;
            height: 10vh;
            justify-content: center;
            align-items: center;
          
            font-family: Imprint MT Shadow;
        }
 
        /* styling the button*/
      .kp {
             margin-left:200px;
            padding: 5px 5px;
            display: inline-block;
            color: black;
            letter-spacing: 2px;
            text-transform: uppercase;
            text-decoration: none;
            font-size: 3em;
            overflow: hidden;
            border-radius:25px 0px;
        }
 
        /*creating animation effect*/
     .kp:hover {
            color: black;
            background: #39ff14;
            box-shadow: 0 0 50px #39ff14;
        }
        
        
        /*Card css*/
        .kp2 {

            margin: 0;
            padding: 0;
            display: flex;
            height: 30vh;
            justify-content: center;
            align-items: center;
          
            font-family: Elephant;
            
        }
        .kp2:hover {
            color: #111;
           
            box-shadow: 0 0 50px #39ff14;
        }
        .l{
        
        width:130px;
        }


.kp12 {

            margin: 0;
            padding: 0;
            display: flex;
            height: 10vh;
            justify-content: center;
            align-items: center;
     
            font-family:  Elephant;
        }
 
        /* styling the button*/
      .kp12 {
             margin-left:200px;
            padding: 5px 5px;
            display: inline-block;
            color: black;
            letter-spacing: 2px;
            text-transform: uppercase;
            text-decoration: none;
            font-size: 3em;
            overflow: hidden;
            border-radius:25px 0px;
        }
 
        /*creating animation effect*/
     .kp12:hover {
            color: black;
            background: #87CEEB;
            box-shadow: 0 0 50px pink;
        }
        
</style>
</head>
<body>
<%@include file="component/navbar.jsp" %>

<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  
   
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="h1.webp" class="d-block w-100" alt="..." height="400px">
    </div>
    <div class="carousel-item">
      <img src="img/hh2.jpg" class="d-block w-100" alt="..." height="400px">
    </div>
    <div class="carousel-item">
      <img src="img/kp.jpg" class="d-block w-100" alt="..." height="400px">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
	
	<div class="container p-3 ">
		<p class="text-center fs-2 kp " data-tilt data-tilt-scale="1.1">Key Features of our Hospital</p>

		<div class="row ">
			<div class="col-md-12 p-5">
				<div class="row " >
					<div class="col-md-6 ">
						<div class="card paint-card kp2">
							<div class="card-body " >
								<p class="fs-6 ">100% Safety</p>
								<p >Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Voluptatem, inventore</p>
							</div>
						</div>
					</div>
					
					<div class="col-md-6">
						<div class="card paint-card kp2">
							<div class="card-body">
								<p class="fs-5">Clean Environment</p>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Voluptatem, inventore</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card kp2">
							<div class="card-body">
								<p class="fs-5">Friendly Doctors</p>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Voluptatem, inventore</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card kp2">
							<div class="card-body">
								<p class="fs-5">Medical Research</p>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Voluptatem, inventore</p>
							</div>
						</div>
					</div>
				</div>
			</div>

			
<div class="container p-2">
		<p class="text-center fs-2 kp12 ">Our Team</p>
		 
        
 
		<div class="row">
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doc2.png"  height="170px"  class="l">
						<p class="fw-bold fs-5">Pavan Chaudhary</p>
						<p class="fs-7">(CEO & Chairman)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doc1.png"  height="170px"  class="l">
						<p class="fw-bold fs-5">Dr.Lalita Patil</p>
						<p class="fs-7">(Chief Doctor)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doc3.png" height="170px"  class="l">
						<p class="fw-bold fs-5">Dr.Rahul Patil</p>
						<p class="fs-7">(Chief Doctor)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card ">
					<div class="card-body text-center ">
						<img src="img/doc4.jpg" height="170px" class="l">
						<p class="fw-bold fs-5">Dr.Kunal Patil</p>
						<p class="fs-7">(Chief Doctor)</p>
					</div>
				</div>
			</div>

		</div>

	</div>






		</div>
	</div>
	<%@include file="component/footer.jsp" %>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
    <script src="./index.js"></script>


 
</body>
</html>