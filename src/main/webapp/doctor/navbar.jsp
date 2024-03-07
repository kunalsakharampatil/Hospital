<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.io.*,java.util.*,java.sql.*" %>
<%@page isELIgnored="false"%>

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
    
}

</style>
</head>

<body>


<nav class="navbar navbar-expand-lg navbar-dark bg-secondary ">
	<div class="container-fluid">
		<a class="navbar-brand  text-withe" href="index.jsp" data-tilt data-tilt-scale="1.1"><img src="img/h1.png"> Sai Shindhu MultiSpeciality Hospital</a>
		<button class="navbar-toggler " type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link btn-outline-dark btn-sm text-withe" href="index.jsp"><b>HOME</b></a></li>
				<li class="nav-item"><a class="nav-link btn-outline-dark btn-sm text-withe" href="patient.jsp"><b>Patient</b></a></li>
				
			</ul>

			<form class="d-flex col-md-2 "  >
				<div class="dropdown">
					<button class="btn btn-light dropdown-toggle   btn-outline-dark btn-sm text-secondary " type="button"
						id="dropdownMenuButton1" data-bs-toggle="dropdown"
						aria-expanded="false">
						
						<%
						try{  
	
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/passion","root","kunal@123");  
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from doc_in");
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
					
					
				</div>
			</form>
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