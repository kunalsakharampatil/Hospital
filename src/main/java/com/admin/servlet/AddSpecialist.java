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

import com.dao.SpecialistDao;
import com.db.DBConnect;
import com.entity.user;

@WebServlet("/addSpecialist")
public class AddSpecialist extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String Spe_list = req.getParameter("Spe_list");
	  String id = req.getParameter("id");

		 RequestDispatcher dis=null;

		HttpSession session = req.getSession();
		
		try {
		PrintWriter out=resp.getWriter();
		Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/passion?useSSL=false","root","kunal@123"); 
	
	 PreparedStatement pst=con.prepareStatement("insert into spe_list values(?,?)");
	 
	pst.setString(1,id);
	 pst.setString(2, Spe_list);
 	
	 int i=pst.executeUpdate();
	 
	 dis=req.getRequestDispatcher("admin/index.jsp");
	 
	 if(i>=0)
	 {
		 session.setAttribute("succMsg", "Specialist Added");
		 //RequestDispatcher rd=req.getRequestDispatcher("singup.jsp");  
	   // rd.forward(req, resp);
	    
	    //req.setAttribute("sucMsg" , "Register Sucessfully");
		resp.sendRedirect("admin/index.jsp");
		
	 }
	 else
	 {
		 session.setAttribute("errorMsg", "wrong");
		//resp.sendRedirect("signup.jsp");
	 resp.sendRedirect("admin/index.jsp");
	
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

