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

//import com.dao.userdao;
import com.db.DBConnect;
import com.entity.user;

@WebServlet("/userregister")
public class userregister extends HttpServlet {

	
        


@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String id=req.getParameter("id");
	String fullname=req.getParameter("fullname");
	 String email=req.getParameter("email");
	 String password=req.getParameter("password");
	 
	 RequestDispatcher dis=null;
	try
{  
			PrintWriter out=resp.getWriter();
			Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/passion","root","kunal@123"); 
		
		 PreparedStatement pst=con.prepareStatement("insert into kp3 values(?,?,?,?)");
		 
		pst.setString(1,id);
		 pst.setString(2, fullname);
     	 pst.setString(3, email);
		 pst.setString(4, password);
		 int i=pst.executeUpdate();
		 
		 dis=req.getRequestDispatcher("singup.jsp");
		 //HttpSession session=req.getSession(); 
		 if(i>=0)
		 {
			 req.setAttribute("sucMsg", "Register Sucessfully");
			 //RequestDispatcher rd=req.getRequestDispatcher("singup.jsp");  
		   // rd.forward(req, resp);
		    
		    //req.setAttribute("sucMsg" , "Register Sucessfully");
			//resp.sendRedirect("singup.jsp");
			
		 }
		 else
		 {
		 req.setAttribute("errorMsg", "Register Sucessfully");
			//resp.sendRedirect("signup.jsp");
			
		
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

