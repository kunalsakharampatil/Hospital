<%@ page import="java.io.*,java.util.*,java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String id=request.getParameter("id");
try{  
	
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/passion","root","kunal@123"); 
String sql="delete from doc_in where id='"+id+"'";
Statement st=con.createStatement();
int i=st.executeUpdate(sql);
 if(i==0)
 {
	 RequestDispatcher rd=request.getRequestDispatcher("doctor.jsp");  
	    rd.forward(request, response);
 }
 else
 {
	 RequestDispatcher rd=request.getRequestDispatcher("doctor.jsp");  
	    rd.forward(request, response);
 }
}
catch(Exception e)
{
	System.out.println(e); 
}


%>
</body>
</html>