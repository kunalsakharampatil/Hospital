package com.db;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.*;
import java.sql.*;

@WebServlet("/DBConnect")
public class DBConnect extends HttpServlet {
	private static final long serialVersionUID = 1L;

   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		try
		{
			PrintWriter out=response.getWriter();
			Class.forName("com.mysql.jdbc.Driver");
			out.println("Driver is Loded");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/passion","root","kunal@123");
			out.println("connection is created");
		}
		catch(Exception e)
		{
			System.out.println("Error="+e);
		}
	}


	

}