package com.einsure.model;

import java.util.Date;

public class Customer {
	private int custId;
	private String  username;
	private String password;
	private Date dob;
	private int age;
	private String mobile,email,address,gender,status;
	
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getCustId() {
		return custId;
	}
	public void setCustId(int custId) {
		this.custId = custId;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Customer() {
		super();
	}
	@Override
	public String toString() {
		return "Customer [custId=" + custId + ", username=" + username + ", password=" + password + ", dob=" + dob
				+ ", age=" + age + ", mobile=" + mobile + ", email=" + email + ", address=" + address + ", gender="
				+ gender + "]";
	}
	
	

}
