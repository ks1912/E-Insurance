package com.einsure.model;

import java.util.Date;

public class Order {
	private int orderId,custId,policyId;
	private Date startDate, endDate;
	private String status;
	private double amount;
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public int getCustId() {
		return custId;
	}
	public void setCustId(int custId) {
		this.custId = custId;
	}
	public int getPolicyId() {
		return policyId;
	}
	public void setPolicyId(int policyId) {
		this.policyId = policyId;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public Order() {
		super();
	}
	@Override
	public String toString() {
		return "Order [orderId=" + orderId + ", custId=" + custId + ", policyId=" + policyId + ", startDate="
				+ startDate + ", endDate=" + endDate + ", status=" + status + ", amount=" + amount + "]";
	}
	
	

}
