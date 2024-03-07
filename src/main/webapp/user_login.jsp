<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>user login page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">
<link rel="stylesheet" href="./index.css">
<style>

body
		{
			background-image: url(user5.jpg);
			background-size: cover;
			background-repeat: no-repeat;
			
			
		}
		.container{
font-family: 'Latin';
}
.card{

opacity: 0.8;
}


        #particles-js {
            position: absolute;
            width: 100%;
            height: 100%;
        }
   
  /*Card css*/
        .kp2 {

            margin: 0;
            padding: 0;
            display: flex;
            height: 60vh;
            justify-content: center;
            align-items: center;
          
            
            
        }
        .kp2:hover {
            color: #111;
           
            box-shadow: 0 0 50px #39ff14;
        }
   
</style>
<%@include file="component/allcss.jsp"%>
</head>
<body>
<%@include file="component/navbar.jsp" %>



<div id="particles-js"></div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
    <script src="./js file/particles.min.js"></script>
    <script src="./js file/app.js"></script>


<div class="container p-5  "data-tilt data-tilt-scale="1.1"  ><br><br>
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card kp2">
					<div class="card-body">
						<p class="fs-4 text-center">User Login</p>
						
						<c:if test="${not empty succMsg }">
							<p class="text-center text-success fs-7">${succMsg}</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						<c:if test="${not empty errorMsg }">
							<p class="text-center text-danger fs-7">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						
						<form action="userLogin" method="post">
							<div class="mb-3">
								<label class="form-label">Email address</label> <input required
									name="email" type="email" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Password</label> <input required
									name="password" type="password" class="form-control">
							</div>

							<button type="submit" class="btn bg-dark text-white col-md-12">Login</button>
							
							<br>Don't have account?<a href="singup.jsp" class="click">create one</a>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
	crossorigin="anonymous"></script>
<script src="./index.js"></script>
</body>
</html>