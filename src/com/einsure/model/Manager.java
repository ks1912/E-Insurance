package com.einsure.model;

public class Manager {
	private int mgrNo;
	private String mgrName;
	private String mobile;
	private String email;
	private int bid;
	public int getMgrNo() {
		return mgrNo;
	}
	public void setMgrNo(int mgrNo) {
		this.mgrNo = mgrNo;
	}
	public String getMgrName() {
		return mgrName;
	}
	public void setMgrName(String mgrName) {
		this.mgrName = mgrName;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public Manager() {
		super();
	}
	@Override
	public String toString() {
		return "Manager [mgrNo=" + mgrNo + ", mgrName=" + mgrName + ", mobile=" + mobile + ", email=" + email + ", bid="
				+ bid + "]";
	}
	
	
	
	

}
