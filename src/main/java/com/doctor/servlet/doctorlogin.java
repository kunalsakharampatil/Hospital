package com.doctor.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/doctorlogin")
public class doctorlogin extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		
		String email = req.getParameter("email");
		String password = req.getParameter("password");

		HttpSession session = req.getSession();
              RequestDispatcher dis=null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/passion?useSSL=false","root","kunal@123"); 
			PreparedStatement pst=con.prepareStatement("select*from doc_in where email=? and password=?");
			pst.setString(1, email);
			pst.setString(2, password);
			
			ResultSet rs=pst.executeQuery();
			
			if(rs.next())
			{
				session.setAttribute("userObj", rs.getString("email"));
				dis=req.getRequestDispatcher("doctor/index.jsp");
		}else
		{
			req.setAttribute("errorMsg", "field");
			dis=req.getRequestDispatcher("doctor_login.jsp");
		}
			con.close();
		dis.forward(req, resp);
		}
		
catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}