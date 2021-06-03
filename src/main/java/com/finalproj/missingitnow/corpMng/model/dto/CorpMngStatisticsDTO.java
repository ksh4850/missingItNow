package com.finalproj.missingitnow.corpMng.model.dto;

import java.io.Serializable;
import java.sql.Date;

public class CorpMngStatisticsDTO implements Serializable {
	
	private static final long serialVersionUID = 6114566603870860668L;
	
	private String corpNo;
	private CorpUserDTO corpUser;
	private Date dailyDate;
	private int dailyTotal;
	private Date weeklyDate;
	private int weeklyTotal;
	
	public CorpMngStatisticsDTO() {
	}

	public CorpMngStatisticsDTO(String corpNo, CorpUserDTO corpUser, Date dailyDate, int dailyTotal, Date weeklyDate,
			int weeklyTotal) {
		this.corpNo = corpNo;
		this.corpUser = corpUser;
		this.dailyDate = dailyDate;
		this.dailyTotal = dailyTotal;
		this.weeklyDate = weeklyDate;
		this.weeklyTotal = weeklyTotal;
	}

	public String getCorpNo() {
		return corpNo;
	}

	public void setCorpNo(String corpNo) {
		this.corpNo = corpNo;
	}

	public CorpUserDTO getCorpUser() {
		return corpUser;
	}

	public void setCorpUser(CorpUserDTO corpUser) {
		this.corpUser = corpUser;
	}

	public Date getDailyDate() {
		return dailyDate;
	}

	public void setDailyDate(Date dailyDate) {
		this.dailyDate = dailyDate;
	}

	public int getDailyTotal() {
		return dailyTotal;
	}

	public void setDailyTotal(int dailyTotal) {
		this.dailyTotal = dailyTotal;
	}

	public Date getWeeklyDate() {
		return weeklyDate;
	}

	public void setWeeklyDate(Date weeklyDate) {
		this.weeklyDate = weeklyDate;
	}

	public int getWeeklyTotal() {
		return weeklyTotal;
	}

	public void setWeeklyTotal(int weeklyTotal) {
		this.weeklyTotal = weeklyTotal;
	}

	@Override
	public String toString() {
		return "CorpMngStatisticsDTO [corpNo=" + corpNo + ", corpUser=" + corpUser + ", dailyDate=" + dailyDate
				+ ", dailyTotal=" + dailyTotal + ", weeklyDate=" + weeklyDate + ", weeklyTotal=" + weeklyTotal + "]";
	}

	
	
	
	
	
	
	
}
