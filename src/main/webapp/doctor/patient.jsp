<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.io.*,java.util.*,java.sql.*" %>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="../component/allcss.jsp" %>
<style>.paint-card {
	box-shadow: 0 0 8px 0 rgba(0, 0, 0, 0.3);
}
body
		{
			background-image: url(hh2.jpg);
			background-size: cover;
			background-repeat: no-repeat;
			
		}
</style>
</head>
</head>
<body>



<div class="container p-3">
		<div class="row">
            <div class="col-md-12">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Patient Details</p>
						

						<table class="table">
							<thead>
								<tr>
									<th scope="col">Full Name</th>
									<th scope="col">Gender</th>
									<th scope="col">Age</th>
									<th scope="col">Appoint Date</th>
									<th scope="col">email</th>
									<th scope="col">PhoneNo</th>
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