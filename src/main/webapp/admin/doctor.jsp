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
<%@include file="../component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
   .ani {
            background: linear-gradient( 30deg, red, green);
            display: flex;
            margin: auto;
            margin-top: 20%;
            padding: 10px;
            font-size: 20px;
            font-variant: small-caps;
            font-weight: bolder;
            border: none;
            border-radius: 17px;
        }
        
        .ani:hover {
            clip-path: polygon(7% 10%, 33% 4%, 48% 15%, 72% 4%, 89% 13%, 100% 0%, 100% 100%, 71% 91%, 56% 89%, 60% 98%, 37% 92%, 21% 97%, 7% 92%, 1% 100%, 0% 1%);
        }
        body
		{
			background-image: url(hh2.jpg);
			background-size: cover;
			background-repeat: no-repeat;
			
		}
      .h1{
      
      margin-top:40px;
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
	<div class="container-fluid  p-3" id="particles-js">
		<div class="row">

			<div class="col-md-5 offset-md-4  ">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center h1 multicolor-text  ">Add Doctor</p>
						<c:if test="${not empty errorMsg}">
							<p class="fs-3 text-center text-danger">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<c:if test="${not empty succMsg}">
							<div class="fs-3 text-center text-success" role="alert">${succMsg}</div>
							<c:remove var="succMsg" scope="session" />
						</c:if>
						<form action="../AddDoctor" method="post">
							<div class="mb-3">
								<label class="form-label">FullName</label> <input type="text"
									required name="fullname" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">DOB</label> <input type="date"
									required name="dob" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Qualification</label> <input required
									name="qualification" type="text" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Specialist</label> <select name="spec"
									required class="form-control">
									<option>--select--</option>
										<%
try{  
	
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/passion","root","kunal@123");  
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from spe_list");
while(rs.next())
{
	out.println("</option><option>"+rs.getString(2)+"</option>");
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

							<div class="mb-3">
								<label class="form-label">Email</label> <input type="text"
									required name="email" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">MobNo</label> <input type="text"
									required name="mobno" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Password</label> <input required
									name="password" type="password" class="form-control">
							</div>



							<button type="submit" class="btn btn-primary ani">Submit</button>
						</form>
						  </div>
						</div>
						</div>
						
						    
 				     
		</div>
	</div>
	
</body>
</html>