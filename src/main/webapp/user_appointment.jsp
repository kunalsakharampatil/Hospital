
<%@ page import="java.io.*,java.util.*,java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Appointment</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">
<link rel="stylesheet" href="./index.css">

<%@include file="component/allcss.jsp"%>
<style type="text/css">
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
 .img{
 			width:500px;
 			height:100px;
 }
    
    .row{
    
   margin-top:80px;
    }
    
.ani {
            background: linear-gradient(  black);
            display: flex;
            margin: auto;
            margin-top: 10%;
            padding: 5px;
            font-size: 20px;
            font-variant: small-caps;
            font-weight: bolder;
            border: none;
            border-radius: 17px 0px;
            width:100px;
            
        }
        
        .ani:hover {
            clip-path: polygon(7% 10%, 33% 4%, 48% 15%, 72% 4%, 89% 13%, 100% 0%, 100% 100%, 71% 91%, 56% 89%, 60% 98%, 37% 92%, 21% 97%, 7% 92%, 1% 100%, 0% 1%);
        }
        
        
        .backImg {
	background: linear-gradient(rgba(0, 0, 0, .4), rgba(0, 0, 0, .4)),
		url("img/hospital.jpg");
	height: 20vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}
     .container-fluid{

height:50px;
}
.dropdown{

height:70px;
margin-top:-20px;

}
 .container{
font-family: 'Latin';
}

body
		{
			background-image: url(hh2.jpg);
			background-size: cover;
			background-repeat: no-repeat;
			
		}
		
		
		
		
		
		
		
		
		
		
</style>
</head>
<body>
	


<nav class="navbar navbar-expand-lg navbar-dark fixed-top ">
	<div class="container-fluid">
		<a class="navbar-brand text-warning" href="index.jsp"data-tilt data-tilt-scale="1.1"><img src="admin/h1.png"> Sai Shindhu MultiSpeciality Hospital</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0 offset-md-7">

				<li class="nav-item"><a class="nav-link  btn-outline-dark btn-sm text-white "  href="user_appointment.jsp">APPOINTMENT</a></li>
				<li class="nav-item"><a class="nav-link  btn-outline-dark btn-sm text-white "  href="view_appointment.jsp"> V_APPOINTMENT</a></li>
				
				
			</ul>

			
		</div>
	</div>
</nav>



	<div class="container  ">
		<div class="row">
			

			<div class="col-md-6 " >
				<div class="card paint-card">
					<div class="card-body">
						<p class="text-center  fs-3">User Appointment</p>
						
						<c:if test="${not empty succMsg }">
							<p class="text-center text-success fs-7">${succMsg}</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						<c:if test="${not empty errorMsg }">
							<p class="text-center text-danger fs-7">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						
						<form class="row g-3" action="Appointment" method="post">

						

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Full Name</label> <input
									required type="text" class="form-control" name="fullname">
							</div>

							<div class="col-md-6">
								<label>Gender</label> <select class="form-control" name="gender"
									required>
									<option value="male">Male</option>
									<option value="female">Female</option>
								</select>
							</div>

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Age</label> <input
									required type="number" class="form-control" name="age">
							</div>

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Appointment
									Date</label> <input type="date" class="form-control" required
									name="appoint_date">
							</div>

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Email</label> <input
									required type="email" class="form-control" name="email">
							</div>

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Phone No</label> <input
									maxlength="10" required type="number" class="form-control"
									name="phno">
							</div>


							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Diseases</label> <input
									required type="text" class="form-control" name="diseases">
							</div>

							<div class="col-md-6">
								<label for="inputPassword4" class="form-label">Doctor</label> <select
									required class="form-control" name="doct">
									<option value="">--select--</option>

									<%
try{  
	
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/passion","root","kunal@123");  
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from doc_in");
while(rs.next())
{
	out.println("<option>"+rs.getString(2)+"</option>");
	//out.println("<td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getString(8)+"</td>");
	//out.println("<td><a href=Edit_Doctor.jsp?fullname="+rs.getString(2)+"&dob="+rs.getString(3)+"&qualification="+rs.getString(4)+"&spec="+rs.getString(5)+"&email="+rs.getString(6)+"&mobno="+rs.getString(7)+"&password="+rs.getString(8)+">Edit</a></td>");
//out.println("<td><a href=delet.jsp?fullname="+rs.getString(2)+">Delet</a></td>");
	//out.println("</tr>");
	
}
} 
catch(Exception e)
{
	System.out.println(e); 
} 		
%>


								</select>
							</div>

							<div class="col-md-12">
								<label>Full Address</label>
								<textarea required name="address" class="form-control" rows="3"
									cols=""></textarea>
							</div>
                           
                            
							
								<button class="offset-md-3 btn btn-warning ani">Submit</button>
						

						
						</form>
					</div>
				</div>
			</div>
		</div>


	</div>
	
	
	

	<%@include file="component/footer.jsp"%>
	
	<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
	crossorigin="anonymous"></script>
<script src="./index.js"></script>
</body>
</html>