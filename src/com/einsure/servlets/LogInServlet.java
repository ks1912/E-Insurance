package com.einsure.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LogInServlet
 */
public class LogInServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LogInServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection con = null;
		PreparedStatement pst = null;
		String msg="";
		// read the data
		
		       //taking email username
				String email = request.getParameter("email");
				//taking password password 
				String password = request.getParameter("pass");
				// connect to data base
				
				
				try
				{
				Class.forName("com.mysql.jdbc.Driver");	
				
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/einsurance", "root", "root");
				System.out.println("login servlet");
				PreparedStatement ps=con.prepareStatement
						("select * from signup WHERE email='"
				                + email + "' and password='" + password + "'");  
	            ResultSet rs=ps.executeQuery();
	            
	            if(rs.next()){
	            	System.out.println("sucesss");
	                msg = "HELLO" + email + "! Your login is SUCESSFULL";
	                RequestDispatcher dispatcher=request.getRequestDispatcher("userHome.jsp");
	                dispatcher.forward(request, response);

}else{
	System.out.println("failed");
	RequestDispatcher dispatcher=request.getRequestDispatcher("userlogin.html");
	dispatcher.include(request, response);

	            }
				
				if(con!=null)
				{
					System.out.println("connected to Data base");
				}
				}
				catch(Exception e)
				{
					e.printStackTrace();
				}
				//check into database
				
				int res = 0;
				try
				{
					
					pst = con.prepareStatement("insert into signup values(?,?)");
					
					pst.setString(1, email);
					pst.setString(2, password);
				
				}catch(Exception e){
					e.printStackTrace();
				}
		

	}

}
