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
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
	height:100px;
}
body
		{
			background-image: url(hh2.jpg);
			background-size: cover;
			background-repeat: no-repeat;
			
			
		}
		.text-center{
		
		margin-top:-10px;
		font-family: 'Latin';
		}
		
.container{

margin-top:-110px

}


 /*Card css*/
        .kp2 {

            margin: 0;
            padding: 0;
            display: flex;
            height: 30vh;
            justify-content: center;
            align-items: center;
          margin-top:30px;
            font-family: Elephant;
            
           }
        .kp2:hover {
            color: #111;
          
            box-shadow: 0 0 50px #39ff14;
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

	<c:if test="${ empty adminObj }">
		<c:redirect url="../admin_login.jsp"></c:redirect>
	</c:if>

	<div class="container p-5 "><br><br>
		<p class="text-center fs-3 multicolor-text ">AdminDashboard</p>
		<c:if test="${not empty errorMsg}">
			<p class="fs-3 text-center text-danger">${errorMsg}</p>
			<c:remove var="errorMsg" scope="session" />
		</c:if>
		<c:if test="${not empty succMsg}">
			<div class="fs-3 text-center text-success" role="alert">${succMsg}</div>
			<c:remove var="succMsg" scope="session" />
		</c:if>
		
		
		
		<div class="row">
		
			<div class="col-md-6 mt-1">
				<div class="card paint-card kp2">
					<div class="card-body text-center ">
						<img src="d.png"><br>
						<p class="fs-4 text-center">
							Doctor <br>
							<%
try{  
	
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/passion","root","kunal@123");  
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from doc_in");
while(rs.next())
{
	out.println("<tr>");
	out.println("<td>"+rs.getString(2)+"</td>");
	out.println("</tr>");
	
}
} 
catch(Exception e)
{
	System.out.println(e); 
} 		
%>
						</p>
					</div>
				</div>
			</div>



			<div class="col-md-6 mt-1">
				<div class="card paint-card kp2">
					<div class="card-body text-center text-success">
						<img src="usera.png"><br>
						<p class="fs-4 text-center">
							User <br>
							<%
try{  
	
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/passion","root","kunal@123");  
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from kp3 ");
while(rs.next())
{
	out.println("<tr>");
	out.println("<td>"+rs.getString(2)+"</td>");
	out.println("</tr>");
	
}
} 
catch(Exception e)
{
	System.out.println(e); 
} 		
%>	
							
						</p>
					</div>
				</div>
			</div>

			<div class="col-md-6 mt-1">
				<div class="card paint-card kp2">
					<div class="card-body text-center text-success">
						<img src="apo1.png"><br>
						<p class="fs-4 text-center">
							Total Appointment <br>
							<%
try{  
	
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/passion","root","kunal@123");  
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from appointment ");
while(rs.next())
{
	out.println("<tr>");
	out.println("<td>"+rs.getString(2)+"</td>");
	out.println("</tr>");
	
}
} 
catch(Exception e)
{
	System.out.println(e); 
} 		
%>	
						</p>
					</div>
				</div>
			</div>
			

			<div class="col-md-6 mt-1">

				<div class="card paint-card  kp2 h-100" data-bs-toggle="modal" data-bs-target="#exampleModal">
					<div class="card-body text-center text-success">
						<img src="apo1.png"><br>
						<p class="fs-4 text-center">
						Specialist<br>
						<%
try{  
	
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/passion","root","kunal@123");  
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from spe_list ");
while(rs.next())
{
	out.println("<tr>");
	out.println("<td>"+rs.getString(2)+"</td>");
	out.println("</tr>");
	
}
} 
catch(Exception e)
{
	System.out.println(e); 
} 		
%>	
						</p>
					</div>
				</div>

			</div>

		</div>
	</div>


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       
       <form action="AddSpecialist" method="post">

						<div class="form-group">
							<label>Enter Specialist Name</label> <input type="text"
								name="Spe_list" class="form-control">
						</div>
						<div class="text-center mt-3">
							<button type="submit" class="btn btn-primary">Add</button>
						</div>
					</form>
       
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        
      </div>
    </div>
  </div>
</div>
</body>
</html>