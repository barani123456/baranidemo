package com.bean.com;

import java.sql.Date;

public class RegisterBean {
	private int SINo;
	private String fullName;
	private String email;
	private String address;
	private String phonenumber;
	private String username;
	private String password;
	private String customerinformation;
 


	public int getSINo() {
		return SINo;
	}

	public void setSINo(int sINo) {
		SINo = sINo;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
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

	public String getPhonenumber() {
		return phonenumber;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
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

	public String getCustomerinformation() {
		return customerinformation;
	}

	public void setCustomerinformation(String customerinformation) {
		this.customerinformation = customerinformation;
	}

	}
