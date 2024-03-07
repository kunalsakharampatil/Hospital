<%@ page import="java.io.*,java.util.*,java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
            background: linear-gradient( 30deg,);
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
        
        
        body
		{
			background-image: url(h1.jpg);
			background-size: cover;
			background-repeat: no-repeat;
		}
       
     
h5{

color:red;
}
.multicolor-text {
            text-align: center;
            margin-top:45px;
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
	<div class="container-fluid p-2 h-50" id="particles-js">
		<div class="row">

			
						    <div class="col-md-12">
 				    
 				             <div class="card-body  ">
 				     					   
 				     					<p class="fs-3 text-center multicolor-text">Doctor Details</p>
 				     					<table class="table" >
 				     					<thead>
 				     					<tr>
 				     						<th scope="col" >Full Name</th>
 				     				        <th scope="col" >DOB</th>
 				     						<th scope="col" >Qualification</th>
 				     						<th scope="col" >Specialist</th>
 				     						<th scope="col">Email</th>
 				     						<th scope="col" >Mob No</th>
 				     						<th scope="col" >Password</th>
 				     						<th scope="col" >Action</th>
 				     					 
 				     					
 				     					</thead>
 				     					<tbody>
 				     					
<%
try{  
	
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/passion","root","kunal@123");  
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from doc_in");
while(rs.next())
{
	out.println("<tr>");
	out.println("<td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getString(8)+"</td>");
	out.println("<td><a href=Edit_Doctor.jsp?id="+rs.getInt(1)+"&fullname="+rs.getString(2)+"&dob="+rs.getString(3)+"&qualification="+rs.getString(4)+"&spec="+rs.getString(5)+"&email="+rs.getString(6)+"&mobno="+rs.getString(7)+"&password="+rs.getString(8)+"><h5></h5></a></td>");
	out.println("<td><a href=delet.jsp?id="+rs.getInt(1)+"><h5>Delet</h5></a></td>");
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