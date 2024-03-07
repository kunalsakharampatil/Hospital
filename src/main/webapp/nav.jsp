<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@ page import="java.io.*,java.util.*,java.sql.*" %>
<html>
<head>
<title>navnar</title>

<style>
.navbar{
   background-color:#46586C;
    opacity:0.8;
    height:50px;
}
.navbar-brand {
     font-family: 'Elephant';
    
}
 img{
    
    width:30px;
    }
    .dropdown{
    
    margin-top:40px;
    }
 
</style>

</head>

<body>
<%@include file="component/allcss.jsp"%>
<nav class="navbar navbar-expand-lg navbar-dark fixed-top ">
	<div class="container-fluid">
		<a class="navbar-brand text-warning" href="doctor/index.jsp"><img src="admin/h1.png"> Sai Hospital</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0 offset-md-7">

				<li class="nav-item"><a class="nav-link  btn-outline-dark btn-sm text-white "  href="user_appointment.jsp">APPOINTMENT</a></li>
				<li class="nav-item"><a class="nav-link  btn-outline-dark btn-sm text-white "  href="view_appointment.jsp"> VIEW APPOINTMENT</a></li>
				
			</ul>

			<form class="d-flex">
				<div class="dropdown">
					<button class="btn btn-light dropdown-toggle" type="button"
						id="dropdownMenuButton1" data-bs-toggle="dropdown"
						aria-expanded="false">
						
						<%
						try{  
	
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/passion","root","kunal@123");  
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from kp3");
while(rs.next())
{
	out.println("<option>"+rs.getString(2)+"</option>");
	
	
}
} 
catch(Exception e)
{
	System.out.println(e); 
} 		
%>
						
						
						
					</button>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
					
						<li><a class="dropdown-item" href="userlogout">Logout</a></li>
					</ul>
				</div>
			</form>
		</div>
	</div>
</nav>




		<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="img/6jVwBz.jpg" class="d-block w-100" alt="..." height="400px">
    </div>
    <div class="carousel-item">
      <img src="img/kp.jpg" class="d-block w-100" alt="..." height="400px">
    </div>
    <div class="carousel-item">
      <img src="img/kp1.jpg" class="d-block w-100" alt="..." height="400px">
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
	
	

</body>
</html>