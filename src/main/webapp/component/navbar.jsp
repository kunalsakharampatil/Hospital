<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
<title>navnar</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">
<link rel="stylesheet" href="./index.css">
<style>
.navbar{
   background-color:#46586C;
    opacity:0.8;
    
}
.navbar-brand {
     font-family: 'Elephant';
    margin-top:-5px;
}
ul li 
{

font-family: 'Castellar';

}
ul li a:hover
  {
      
      padding: 5px;

    }
    img{
    
    width:30px;
    }
    
    
    .kp1 {

            margin: 0;
            padding: 0;
            display: flex;
            
            justify-content: center;
            align-items: center;
          
            font-family: Imprint MT Shadow;
        }
 
        /* styling the button*/
      .kp1 {
     
           
            display: inline-block;
            color: #008000;
            letter-spacing: 2px;
            text-transform: uppercase;
            text-decoration: none;
            
            overflow: hidden;
        }
 
        /*creating animation effect*/
     .kp1:hover {
            color: #111;
            background: red;
            box-shadow: 0 0 50px #39ff14;
        }
</style>
</head>

<body>

<nav class="navbar navbar-expand-lg navbar-dark fixed-top ">
  <div class="container-fluid" >
    <a class="navbar-brand" href="index.jsp"data-tilt data-tilt-scale="1.1"><img src="img/h1.png">  Sai Shindhu Hospital</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
      
 
        <li class="nav-item">
          <a class="nav-link  btn-outline-dark btn-sm text-white kp1 " aria-current="page" href="admin_login.jsp" >ADMIN</a>
        </li>
        
        <li class="nav-item">
          <a  class="nav-link  btn-outline-dark btn-sm text-white kp1" aria-current="page" href="doctor_login.jsp">DOCTOR</a>
        </li>
        
        <li class="nav-item">
          <a  class="nav-link btn-outline-dark btn-sm text-white kp1 " aria-current="page" href="user_appointment.jsp">APPOITTMENT</a>
        </li>
        
        <li class="nav-item">
          <a  class="nav-link btn-outline-dark btn-sm text-white kp1 "aria-current="page" href="user_login.jsp">USER</a>
        </li>
        

				
        
      </ul>
     
    </div>
  </div>
</nav>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
	crossorigin="anonymous"></script>
<script src="./index.js"></script>
	
</body>
</html>