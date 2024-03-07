<%@ page import="java.io.*,java.util.*,java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">
<link rel="stylesheet" href="./index.css">

<%@include file="../component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}


 .multicolor-text {
            text-align: center;
            
            background: linear-gradient(to left,
                    violet,
                    indigo,
                    blue,
                    green,
                    yellow,
                    orange,
                    red);
            -webkit-background-clip: text;
            color: transparent;
        }
 
</style>
</head>
<body>
 
  
<%@include file="navbar1.jsp"%>
	<div class="container-fluid p-3">
		<div class="row">

<%

  String s1=request.getParameter("fullname");
  String s2=request.getParameter("dob");
  String s3=request.getParameter("qualification");
  String s4=request.getParameter("spec");
  String s5=request.getParameter("email");
  String s6=request.getParameter("mobno");
  String s7=request.getParameter("password");

%>

			<div class="col-md-4 offset-md-4 ">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center multicolor-text">Edit Doctor</p>
						<c:if test="${not empty errorMsg}">
							<p class="fs-3 text-center text-danger">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<c:if test="${not empty succMsg}">
							<div class="fs-3 text-center text-success" role="alert">${succMsg}</div>
							<c:remove var="succMsg" scope="session" />
						</c:if>
						
					
						

						
						<form action="../UpdateDoctor" method="post">
							<div class="mb-3">
								<label class="form-label">FullName</label> <input type="text"
									required name="fullname" class="form-control" value="<%out.println(s1); %>">
							</div>

							<div class="mb-3">
								<label class="form-label">DOB</label> <input type="text"
									required name="dob" class="form-control" value="<%out.println(s2); %>">
							</div>

							<div class="mb-3">
								<label class="form-label">Qualification</label> 
								<input required
									name="qualification" type="text" class="form-control" value="<%out.println(s3); %>">
							</div>
							<div class="mb-3">
								<label class="form-label">Specialist</label> 
							<input required
									name="spec" type="text" class="form-control" value="<%out.println(s4); %>">								</div>

							<div class="mb-3">
								<label class="form-label">Email</label> <input type="text"
									required name="email" class="form-control" value="<%out.println(s5); %>">
							</div>

							<div class="mb-3">
								<label class="form-label">MobNo</label> <input type="text"
									required name="mobno" class="form-control" value="<%out.println(s6); %>">
							</div>

							<div class="mb-3">
								<label class="form-label">Password</label> <input required
									name="password" type="password" class="form-control" value="<%out.println(s7); %>">
							</div>





							<button type="submit" class="btn btn-primary col-md-12">update</button>
						</form>
						  </div>
						</div>
						</div>
						
	

			  

 				     
		</div>
	</div>
	
</body>
</html>