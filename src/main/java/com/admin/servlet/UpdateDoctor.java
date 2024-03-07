package com.admin.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/UpdateDoctor")
public class UpdateDoctor extends HttpServlet {

	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			int id=Integer.parseInt(req.getParameter("id"));
		 String fullname=req.getParameter("fullname");
		 String dob=req.getParameter("dob");
		 String qualification=req.getParameter("qualification");
		 String spec=req.getParameter("spec");
		 String email=req.getParameter("email");
		 String mobno=req.getParameter("mobno");
		 String password=req.getParameter("password");
		 
		
			
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/passion","root","kunal@123");  
		 PreparedStatement pst=con.prepareStatement("update doc_in set dob='"+dob+"' ,qualification='"+qualification+"',spec='"+spec+"',email='"+email+"',mobno='"+mobno+"',password='"+password+"'where fullname='"+fullname+"'");
		 

		 int i=pst.executeUpdate();
		
		 
		 if(i>=1)
		 {
			 RequestDispatcher rd=req.getRequestDispatcher("admin/Edit_Doctor.jsp");  
		    rd.forward(req, resp);
		 }
		 else
		 {
			 RequestDispatcher rd=req.getRequestDispatcher("admin/Edit_Doctor.jsp");  
			    rd.forward(req, resp);
		 }
		con.close();
		}
		 catch(Exception e)
		{
			System.out.println(e); 
		}  
   }
		
   }
	


