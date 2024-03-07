<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*,java.util.*,java.sql.*" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="../component/allcss.jsp"%>
<style>


.paint-card {
	box-shadow: 0 0 8px 0 rgba(0, 0, 0, 0.3);
}


.navbar{
   background-color:#46586C;
    opacity:0.8;
}
.navbar-brand {
     font-family: 'Elephant';
    
}
.container {

margin-top:110px;
}
.container-fluid{

height:50px;
}
.dropdown{

height:70px;
margin-top:-20px;
}
.dropdown-item
{
margin-top:30px;


}
body
		{
			background-image: url(hh2.jpg);
			background-size: cover;
			background-repeat: no-repeat;
			
		}
	
.navbar-nav{

margin-left:330px;
}
.dt{
margin-top:20px;
margin-left:30px;
}
.py{
margin-top:-10px;

}
.py1{
width:10px;'
}
.pr{
margin-left:40px;
}
</style>

</head>
<body>


<nav class="navbar navbar-expand-lg navbar-dark fixed-top ">
	<div class="container-fluid">
		<a class="navbar-brand text-warning" href="index.jsp"><img src="admin/h1.png"> Sai Hospital</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav hp me-auto mb-2 mb-lg-0 offset-md-7">

				<li class="nav-item"><a class="nav-link  btn-outline-dark btn-sm text-white "  href="user_appointment.jsp">APPOINTMENT</a></li>
				<li class="nav-item"><a class="nav-link  btn-outline-dark btn-sm text-white "  href="view_appointment.jsp"> V_APPOINTMENT</a></li>
				
			</ul>
<button class="btn btn-outline-dark pr "onclick="window.print()">print</button>
			 <form class="d-flex col-md-2 dt "  >
				<div class="dropdown">
					<button class="btn btn-light dt dropdown-toggle" type="button"
						id="dropdownMenuButton1" data-bs-toggle="dropdown"
						aria-expanded="false">Admin</button>
					
					<ul class="dropdown-menu py1 " aria-labelledby="dropdownMenuButton1">
						<li><a class="dropdown-item py" href="userlogout">Logout</a></li>
					</ul>
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
<c:if test="${empty userObj }">
		<c:redirect url="user_login.jsp"></c:redirect>
	</c:if>
	

	
	<div class="container ">
		<div class="row">
			<div class="col-md-12">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 fw-bold text-center text-success">Appointment
							List</p>
						<table class="table">
							<thead>
								<tr>
									<th scope="col">Full Name</th>
									<th scope="col">Gender</th>
									<th scope="col">Age</th>
									<th scope="col">Appoint Date</th>
									<th scope="col">email</th>
									<th scope="col">phoneno</th>
									<th scope="col">Diseases</th>
									<th scope="col">Doctor Name</th>
									<th scope="col">Add</th>

								</tr>
							</thead>
							<tbody>
								
									<%
try{  
	
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/passion","root","kunal@123");  
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from appointment");
while(rs.next())
{
	out.println("<tr>");
	out.println("<td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getString(8)+"</td><td>"+rs.getString(9)+"</td><td>"+rs.getString(10)+"</td>");
	
	out.println("</tr>");
	
}
} 
catch(Exception e)
{
	System.out.println(e); 
} 		
%>	
									



							</tbody>
						</table>

					</div>
				</div>
			</div>

					</div>
	</div>
</body>
</html>