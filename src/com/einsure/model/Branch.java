package com.einsure.model;

public class Branch {
	private int bid;
	private String bname;
	private int lcode;
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public int getLcode() {
		return lcode;
	}
	public void setLcode(int lcode) {
		this.lcode = lcode;
	}
	public Branch() {
		super();
	}
	@Override
	public String toString() {
		return "Branch [bid=" + bid + ", bname=" + bname + ", lcode=" + lcode + "]";
	}

	
	
}
