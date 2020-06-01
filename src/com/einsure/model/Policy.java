package com.einsure.model;

public class Policy {
	private int policy_id;
	private String policy_name;
	private String policy_type;
	private String policy_terms_and_conditions;
	private int policy_period;
	private int policy_return_percentage;
	private double policy_amount;
	private double policy_return_amount;
	public int getPolicy_id() {
		return policy_id;
	}
	public void setPolicy_id(int policy_id) {
		this.policy_id = policy_id;
	}
	public String getPolicy_name() {
		return policy_name;
	}
	public void setPolicy_name(String policy_name) {
		this.policy_name = policy_name;
	}
	public String getPolicy_type() {
		return policy_type;
	}
	public void setPolicy_type(String policy_type) {
		this.policy_type = policy_type;
	}
	public String getPolicy_terms_and_conditions() {
		return policy_terms_and_conditions;
	}
	public void setPolicy_terms_and_conditions(String policy_terms_and_conditions) {
		this.policy_terms_and_conditions = policy_terms_and_conditions;
	}
	public int getPolicy_period() {
		return policy_period;
	}
	public void setPolicy_period(int policy_period) {
		this.policy_period = policy_period;
	}
	public int getPolicy_return_percentage() {
		return policy_return_percentage;
	}
	public void setPolicy_return_percentage(int policy_return_percentage) {
		this.policy_return_percentage = policy_return_percentage;
	}
	public double getPolicy_amount() {
		return policy_amount;
	}
	public void setPolicy_amount(double policy_amount) {
		this.policy_amount = policy_amount;
	}
	public double getPolicy_return_amount() {
		return policy_return_amount;
	}
	public void setPolicy_return_amount(double policy_return_amount) {
		this.policy_return_amount = policy_return_amount;
	}
	public Policy() {
		super();
	}
	@Override
	public String toString() {
		return "Policy [policy_id=" + policy_id + ", policy_name=" + policy_name + ", policy_type=" + policy_type
				+ ", policy_terms_and_conditions=" + policy_terms_and_conditions + ", policy_period=" + policy_period
				+ ", policy_return_percentage=" + policy_return_percentage + ", policy_amount=" + policy_amount
				+ ", policy_return_amount=" + policy_return_amount + "]";
	}
	
	
	
	

}
