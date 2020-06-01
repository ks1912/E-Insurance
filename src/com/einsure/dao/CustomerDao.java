package com.einsure.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.einsure.db.DBConnection;
import com.einsure.model.Customer;

public class CustomerDao {
	
	public boolean customerLogin(String username , String password)
	{
		boolean status = false;
		
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try
		{
			con = DBConnection.getConnection();
			ps = con.prepareStatement("select * from customer where username =? and password =?");
			
			ps.setString(1, username);
			ps.setString(2, password);
			rs = ps.executeQuery();
			if(rs.next())
			{
				status= true;
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

	public Customer getCustomer(int custId)
	{
		
		Customer c = new Customer();
		
		Connection con =null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try
		{
			con = DBConnection.getConnection();
			ps = con.prepareStatement("select * from customer where custid=?");
			ps.setInt(1,custId);
			rs = ps.executeQuery();
			
			
			if(rs.next())
			{
				c.setCustId(rs.getInt(1));
				c.setUsername(rs.getString(2));
				c.setDob(rs.getDate(4));
				c.setAge(rs.getInt(5));
				c.setEmail(rs.getString(6));
				c.setMobile(rs.getString(7));
				c.setAddress(rs.getString(8));
				c.setGender(rs.getString(9));
				c.setStatus(rs.getString(10));
			}

		}catch (Exception e) {

  e.printStackTrace();
		}
		finally
		{
			DBConnection.CloseDBConnection();
		}
		return c;
	}
	
	public List<Customer> getAllCustomer()
	{
		
		List<Customer> allcustomers = new ArrayList<Customer>();
		
		
		Connection con =null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try
		{
			con = DBConnection.getConnection();
			ps = con.prepareStatement("select * from customer where custid=?");
			
			rs = ps.executeQuery();
			
			
			while(rs.next())
			{Customer c = new Customer();
				c.setCustId(rs.getInt(1));
				c.setUsername(rs.getString(2));
				c.setDob(rs.getDate(4));
				c.setAge(rs.getInt(5));
				c.setEmail(rs.getString(6));
				c.setMobile(rs.getString(7));
				c.setAddress(rs.getString(8));
				c.setGender(rs.getString(9));
				allcustomers.add(c);
			}

		}catch (Exception e) {

  e.printStackTrace();
		}
		finally
		{
			DBConnection.CloseDBConnection();
		}
		return allcustomers;
	}
	
	
	
	public boolean activateCustomer(int custId)
	{
		
		
		boolean status = true;
		Connection con =null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try
		{
			con = DBConnection.getConnection();
			ps = con.prepareStatement("update customer set status =? where custid =?");
			ps.setString(1, "active");
			ps.setInt(2, custId);
			int res  = ps.executeUpdate();
			
			
			if(res ==1)
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
	
	public boolean deActivateCustomer(int custId)
	{
		
		
		boolean status = true;
		Connection con =null;
		PreparedStatement ps = null;
		
		
		try
		{
			con = DBConnection.getConnection();
			ps = con.prepareStatement("update customer set status =? where custid =?");
			ps.setString(1, "deactive");
			ps.setInt(2, custId);
			int res  = ps.executeUpdate();
			
			
			if(res ==1)
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

	
	
	public boolean registerCustomer(Customer customer)
	{
		boolean status = false;
		
		Connection con =null;
		PreparedStatement ps = null;
		
		
		try
		{
			con = DBConnection.getConnection();
			ps = con.prepareStatement("insert into customer values(?,?,?,?,?,?,?,?,?,?)");
			ps.setInt(1, customer.getCustId());
			ps.setString(2, customer.getUsername());
			ps.setString(3, customer.getPassword());
			ps.setDate(4, new java.sql.Date(customer.getDob().getTime()));
			ps.setInt(5, customer.getAge());
			ps.setString(6, customer.getEmail());
			ps.setString(7, customer.getMobile());
			ps.setString(8, customer.getAddress());
			ps.setString(9, customer.getGender());
			ps.setString(10, customer.getStatus());
			
			int res  = ps.executeUpdate();
			
			
			if(res ==1)
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
	
	public int getMaxCustNo()
	{
		int max=0;
		Connection con =null;
		Statement ps = null;
		ResultSet rs = null;
		
		try
		{
			
			con = DBConnection.getConnection();
			ps = con.createStatement();
			rs = ps.executeQuery("select max(custid) from customer");
			if(rs.next())
			{
				max = rs.getInt(1);
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
