package com.einsure.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.einsure.db.DBConnection;
import com.einsure.model.Branch;
import com.einsure.model.Location;
import com.einsure.model.Manager;
import com.einsure.model.Policy;

public class CeoDao {
	
	
	public boolean addManager(Manager manager)
	{
		boolean status = false;
		
		
		Connection con = null;
		PreparedStatement ps = null;
		try
		{
			con = DBConnection.getConnection();
			ps = con.prepareStatement("insert into manager values(?,?,?,?,?)");
			
			ps.setInt(1, manager.getMgrNo());
			ps.setString(2, manager.getMgrName());
			ps.setString(3, manager.getMobile());
			ps.setString(4, manager.getEmail());
			ps.setInt(5, manager.getBid());
			int res =ps.executeUpdate();
			if(res ==1)
			{
				status = true;
			}
		
		}
		catch (Exception e) {

e.printStackTrace();
		}
		finally
		{
			DBConnection.CloseDBConnection();
		}
		return status;
	}
	
	
	public boolean ceoLogin(String username , String password)
	{
		boolean status = false;
		
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try
		{
			con = DBConnection.getConnection();
			ps = con.prepareStatement("select * from ceo where username =? and password =?");
			
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

	public boolean addBranch(Branch branch)
	{
		boolean status = false;
		Connection con = null;
		PreparedStatement ps = null;
		try
		{
			con = DBConnection.getConnection();
			ps = con.prepareStatement("insert into branch values(?,?,?)");
			
			ps.setInt(1, branch.getBid());
			ps.setString(2, branch.getBname());
			ps.setInt(3, branch.getLcode());
			
			int res =ps.executeUpdate();
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
	
	
	public List<Location> getLocation()
	{
		List<Location> locations = new ArrayList<Location>();
	    Connection con = null;
	    Statement st = null;
	    ResultSet rs = null;
	    
	    try
	    {
	    	con = DBConnection.getConnection();
	    	st = con.createStatement();
	    	rs = st.executeQuery("select * from location");
	   
	    while(rs.next())
	    {
	    	Location loc = new Location();
	    	
	    	loc.setLcode(rs.getInt(1));
	    	loc.setLname(rs.getString(2));
	    	locations.add(loc);    	
	    }
	    
	    
	    }catch (Exception e) {
		
	    	e.printStackTrace();
		}
	    finally {
	    	{
	    		DBConnection.CloseDBConnection();
	    	}
		}
	
	
	return locations;
	}
	
	
	public List<Branch> getBranches()
	{
		List<Branch> branches = new ArrayList<Branch>();
	    Connection con = null;
	    Statement st = null;
	    ResultSet rs = null;
	    
	    try
	    {
	    	con = DBConnection.getConnection();
	    	st = con.createStatement();
	    	rs = st.executeQuery("select * from branch");
	   
	    while(rs.next())
	    {
	    	Branch b = new Branch();
	    	b.setBid(rs.getInt(1));
	    	b.setBname(rs.getString(2));
	    	b.setLcode(rs.getInt(3));
	    	branches.add(b);

	    }
	    
	    
	    }catch (Exception e) {
		
	    	e.printStackTrace();
		}
	    finally {
	    	{
	    		DBConnection.CloseDBConnection();
	    	}
		}
	
	
	return branches;
	}
	
	
	

	
	public boolean addPolicy(Policy policy)
	{
		boolean status = false;
		Connection con = null;
		PreparedStatement ps = null;
		try
		{
			con = DBConnection.getConnection();
			ps = con.prepareStatement("insert into policy values(?,?,?,?,?,?,?,?)");
			
			ps.setInt(1, policy.getPolicy_id());
			ps.setString(2, policy.getPolicy_type());
			ps.setString(3, policy.getPolicy_name());
			ps.setString(4, policy.getPolicy_terms_and_conditions());
			ps.setInt(5, policy.getPolicy_period());
			ps.setInt(6, policy.getPolicy_return_percentage());
			ps.setDouble(7, policy.getPolicy_amount());
			ps.setDouble(8, policy.getPolicy_return_amount());
			int res =ps.executeUpdate();
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
	
	
	public List<Manager> getManagers()
	{
		List<Manager> managers = new ArrayList<Manager>();
		
		Connection con =null;
		Statement st = null;
		ResultSet rs = null;
		
		try
		{
			con = DBConnection.getConnection();
			st = con.createStatement();
			rs = st.executeQuery("select * from Manager");
			while(rs.next())
			{
				Manager m = new Manager();
				m.setMgrNo(rs.getInt(1));
				m.setMgrName(rs.getString(2));
				m.setMobile(rs.getString(3));
				m.setEmail(rs.getString(4));
				m.setBid(rs.getInt(5));
				managers.add(m);
			}
		}catch (Exception e) {

          e.printStackTrace();
		}
		finally
		{
			DBConnection.CloseDBConnection();
		}
		return managers;
	}
	
	
	public List<Policy> getPolicy()
	{
		List<Policy> policies = new ArrayList<Policy>();
		
		Connection con =null;
		Statement st = null;
		ResultSet rs = null;
		
		try
		{
			con = DBConnection.getConnection();
			st = con.createStatement();
			rs = st.executeQuery("select * from policy");
			while(rs.next())
			{
				Policy p = new Policy();
				p.setPolicy_id(rs.getInt(1));
				p.setPolicy_type(rs.getString(2));
				p.setPolicy_name(rs.getString(3));
				p.setPolicy_terms_and_conditions(rs.getString(4));
				p.setPolicy_period(rs.getInt(5));
				p.setPolicy_return_percentage(rs.getInt(6));
				p.setPolicy_amount(rs.getDouble(7));
				p.setPolicy_return_amount(rs.getDouble(8));
				policies.add(p);
			}
		}catch (Exception e) {

          e.printStackTrace();
		}
		finally
		{
			DBConnection.CloseDBConnection();
		}
		return policies;
	}
	
	
	public Policy getPolicy(int pid)
	{
		Policy p = new Policy();
		
		Connection con =null;
		Statement st = null;
		ResultSet rs = null;
		
		try
		{
			con = DBConnection.getConnection();
			st = con.createStatement();
			rs = st.executeQuery("select * from policy where pid ="+pid);
			if(rs.next())
			{
				
				p.setPolicy_id(rs.getInt(1));
				p.setPolicy_type(rs.getString(2));
				p.setPolicy_name(rs.getString(3));
				p.setPolicy_terms_and_conditions(rs.getString(4));
				p.setPolicy_period(rs.getInt(5));
				p.setPolicy_return_percentage(rs.getInt(6));
				p.setPolicy_amount(rs.getDouble(7));
				p.setPolicy_return_amount(rs.getDouble(8));
				
			}
		}catch (Exception e) {

          e.printStackTrace();
		}
		finally
		{
			DBConnection.CloseDBConnection();
		}
		return p;
	}
	
}
