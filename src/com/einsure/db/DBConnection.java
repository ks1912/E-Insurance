package com.einsure.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	
	public static Connection con =null;
	
	public static Connection getConnection()
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/einsurance","root","root");
		}
		catch (Exception e) {

           e.printStackTrace();
		}
		return con;
	}
	
	
	public static void CloseDBConnection()
	{
		if(con!=null)
		{
			try {
				con.close();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
		}
	}

}
