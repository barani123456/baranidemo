package com.bean.com;

import java.util.Date;

public class EmployeeLeaveForm {

	private int employee_id;
	private Date day;
	private int Section_id;
	private String Over_Time_Start_Time;
	private String Over_Time_End_Time;
	private String Reason;

	public int getEmployee_id() {
		return employee_id;
	}

	public void setEmployee_id(int employee_id) {
		this.employee_id = employee_id;
	}

	public Date getDay() {
		return day;
	}

	public void setDay(Date day) {
		this.day = day;
	}

	public int getSection_id() {
		return Section_id;
	}

	public void setSection_id(int section_id) {
		Section_id = section_id;
	}

	public String getOver_Time_Start_Time() {
		return Over_Time_Start_Time;
	}

	public void setOver_Time_Start_Time(String over_Time_Start_Time) {
		Over_Time_Start_Time = over_Time_Start_Time;
	}

	public String getOver_Time_End_Time() {
		return Over_Time_End_Time;
	}

	public void setOver_Time_End_Time(String over_Time_End_Time) {
		Over_Time_End_Time = over_Time_End_Time;
	}

	public String getReason() {
		return Reason;
	}

	public void setReason(String reason) {
		Reason = reason;
	}

}
