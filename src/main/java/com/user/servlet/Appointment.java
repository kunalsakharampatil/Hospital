package com.user.servlet;

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
import jakarta.servlet.http.HttpSession;
@WebServlet("/Appointment")
public class Appointment extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		String id=req.getParameter("id");
		 String fullname = req.getParameter("fullname");
			String gender = req.getParameter("gender");
			String age = req.getParameter("age");

			String appointment = req.getParameter("appoint_date");

			String email = req.getParameter("email");
			String phno = req.getParameter("phno");
			String diseases = req.getParameter("diseases");
			String doct = req.getParameter("doct");
			String address = req.getParameter("address");
			
		 RequestDispatcher dis=null;

			HttpSession session = req.getSession();
		
		try{  
			PrintWriter out=resp.getWriter();
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection(  
		"jdbc:mysql://localhost:3306/passion","root","kunal@123");  
		 PreparedStatement pst=con.prepareStatement("insert into appointment values(?,?,?,?,?,?,?,?,?,?)");
		  
		 
	
			pst.setString(1,id);
			pst.setString(2, fullname);
			pst.setString( 3,gender);
			pst.setString(4, age);
			pst.setString(5, appointment);
			pst.setString(6, email);
			pst.setString(7, phno);
			pst.setString(8, diseases);
			pst.setString(9, doct);
			pst.setString(10, address);

			int i = pst.executeUpdate();
		 
			dis=req.getRequestDispatcher("user_appointment.jsp");
			 
			 if(i>=1)
			 {
				 session.setAttribute("succMsg", "Appointment Successfully");
				 //RequestDispatcher rd=req.getRequestDispatcher("singup.jsp");  
			   // rd.forward(req, resp);
			    
			    //req.setAttribute("sucMsg" , "Register Sucessfully");
				resp.sendRedirect("user_appointment.jsp");
				
			 }
			 else
			 {
				 session.setAttribute("errorMsg", "Unsuccess");
				//resp.sendRedirect("signup.jsp");
			 resp.sendRedirect("user_appointment.jsp");
			
			}
			 con.close();
		       // dis.forward(req, resp);
		}
			 catch(Exception e)
			{
				e.printStackTrace();
			}  
	}
	

}
