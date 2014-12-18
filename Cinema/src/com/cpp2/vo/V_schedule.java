package com.cpp2.vo;

import java.util.Date;

public class V_schedule {

	private int id;
	private Date airtime;
	private String totalTicket;
	private String videohallName;
	private String remanent;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getAirtime() {
		return airtime;
	}
	public void setAirtime(Date airtime) {
		this.airtime = airtime;
	}
	public String getTotalTicket() {
		return totalTicket;
	}
	public void setTotalTicket(String totalTicket) {
		this.totalTicket = totalTicket;
	}
	public String getVideohallName() {
		return videohallName;
	}
	public void setVideohallName(String videohallName) {
		this.videohallName = videohallName;
	}
	public String getRemanent() {
		return remanent;
	}
	public void setRemanent(String remanent) {
		this.remanent = remanent;
	}
	
}
