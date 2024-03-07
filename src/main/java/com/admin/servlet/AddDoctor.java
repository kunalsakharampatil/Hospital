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
import jakarta.servlet.http.HttpSession;

//import com.dao.DoctorDao;
//import com.db.DBConnect;
//import com.entity.Doctor;
@WebServlet("/AddDoctor")
public class AddDoctor extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String id=req.getParameter("id");
		 String fullname = req.getParameter("fullname");
			String dob = req.getParameter("dob");
			String qualification = req.getParameter("qualification");

			String spec = req.getParameter("spec");

			String email = req.getParameter("email");
			String mobno = req.getParameter("mobno");
			String password = req.getParameter("password");
		
		 RequestDispatcher dis=null;

			HttpSession session = req.getSession();
		
		try{  
			PrintWriter out=resp.getWriter();
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/passion","root","kunal@123");  
		 PreparedStatement pst=con.prepareStatement("insert into doc_in values(?,?,?,?,?,?,?,?)");
		  
		 
	
			pst.setString(1,id);
			pst.setString(2, fullname);
			pst.setString(3, dob);
			pst.setString(4, qualification);
			pst.setString(5, spec);
			pst.setString(6, email);
			pst.setString(7, mobno);
			pst.setString(8, password);

			int i = pst.executeUpdate();
		 
			dis=req.getRequestDispatcher("admin/doctor.jsp");
			 
			 if(i>=0)
			 {
				 session.setAttribute("succMsg", "Doctor Added Successfully");
				 //RequestDispatcher rd=req.getRequestDispatcher("singup.jsp");  
			   // rd.forward(req, resp);
			    
			    //req.setAttribute("sucMsg" , "Register Sucessfully");
				resp.sendRedirect("admin/doctor.jsp");
				
			 }
			 else
			 {
				 session.setAttribute("errorMsg", "Unsuccess");
				//resp.sendRedirect("signup.jsp");
			 resp.sendRedirect("admin/doctor.jsp");
			
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

		
		