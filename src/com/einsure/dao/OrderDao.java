package com.einsure.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.einsure.db.DBConnection;
import com.einsure.model.Order;

public class OrderDao {
	
	public boolean  order(Order order)
	{
		boolean status = false;
		Connection con =null;
		PreparedStatement ps = null;
		
		
		try
		{
			con = DBConnection.getConnection();
			ps = con.prepareStatement("insert into policyorders values(?,?,?,?,?,?,?)");
			
			ps.setInt(1, order.getOrderId());
			ps.setInt(2, order.getCustId());
			ps.setInt(3, order.getPolicyId());
			ps.setDouble(4, order.getAmount());
			ps.setDate(5, new java.sql.Date(order.getStartDate().getTime()));
			ps.setDate(6, new java.sql.Date(order.getEndDate().getTime()));
			ps.setString(7, order.getStatus());
			int res = ps.executeUpdate();
			if(res == 1)
			{
				status = true;
			}

		}catch (Exception e) {

  e.printStackTrace();
		}
		finally
		{
			DBConnection.CloseDBConnection();
		}
		
		return status;
	}

	
	
	public int getMaxorderNo()
	{
		int max=0;
		Connection con =null;
		Statement ps = null;
		ResultSet rs = null;
		
		try
		{
			
			con = DBConnection.getConnection();
			ps = con.createStatement();
			rs = ps.executeQuery("select max(orderid) policyorder");
			if(rs.next())
			{
				max = rs.getInt(1);
				System.out.println(max);
			}
		}catch (Exception e) {

e.printStackTrace();
		}
		
		return max;
	}
	
	
	public int getCustomerId(String username)
	{
		
		int custId=0;
		Connection con =null;
		PreparedStatement ps =null;
		//Statement ps = null;
		ResultSet rs = null;
		
		try
		{
			
			con = DBConnection.getConnection();
			ps = con.prepareStatement("select custid from customer where username = ?");
			ps.setString(1, username);
					
			rs = ps.executeQuery();
			if(rs.next())
			{
				custId = rs.getInt(1);
			}
		}catch (Exception e) {

e.printStackTrace();
		}
		
		return custId;
	}
	
}
