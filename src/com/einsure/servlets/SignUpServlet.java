package com.einsure.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class SignUpServlet
 */
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Connection con = null;
		PreparedStatement pst = null;

	
	// read the data
		
		
		String email = request.getParameter("email");
		String name = request.getParameter("fname");
		String password = request.getParameter("pass");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String country = request.getParameter("country");
		int pin = Integer.parseInt(request.getParameter("pin"));
		int phoneno = Integer.parseInt(request.getParameter("phoneno"));
		// connect to data base
		
		
		try
		{
		Class.forName("com.mysql.jdbc.Driver");	
		
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/einsurance", "root", "root");
		
		if(con!=null)
		{
			System.out.println("connected to Data base");
		}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		// store data into database
		
		int res = 0;
		try
		{
			
			pst = con.prepareStatement("insert into signup(email,fullname,password,address,city,state,country,pin,phoneno)"
					+ "value(?,?,?,?,?,?,?,?,?)");
			
			pst.setString(1, email);
			pst.setString(2, name);
			pst.setString(3, password);
			pst.setString(4, address);
			pst.setString(5, city);
			pst.setString(6, state);
			pst.setString(7, country);
			pst.setInt(8, pin);
			pst.setInt(9, phoneno);
			
			res =pst.executeUpdate();
			
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		// send response
	
	     PrintWriter out = response.getWriter();
	     
	     if(res!=0)
	     {
	    	 out.println("SignUp Successfull......<br> Login Here");
	    	 RequestDispatcher rd = request.getRequestDispatcher("userHome.jsp");
	    	 rd.forward(request, response);
	     }
	
	
	
	}

}
