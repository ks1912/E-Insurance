package com.einsure.model;

public class Location {
	private int lcode;
	private String lname;
	public int getLcode() {
		return lcode;
	}
	public void setLcode(int lcode) {
		this.lcode = lcode;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public Location() {
		super();
	}
	@Override
	public String toString() {
		return "Location [lcode=" + lcode + ", lname=" + lname + "]";
	}
	
	
	

}
