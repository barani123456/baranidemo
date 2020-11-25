package com.bean.com;

public class Employee {

	protected int id;
	protected String employeename;
	protected String email;
	protected String country;
	public Employee() {
	}

	public Employee(int id, String employeename, String email, String country) {
		super();
		this.id = id;
		this.employeename = employeename;
		this.email = email;
		this.country = country;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}



	public String getEmployeename() {
		return employeename;
	}

	public void setEmployeename(String employeename) {
		this.employeename = employeename;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

}
