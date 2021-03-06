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
	private Date monthlyDate;
	private int monthlyTotal;
	private String prodCtgNo;
	private String prodCtgName;
	private int ctgTotalAmt;
	private String prodNo;
	private String prodName;
	private int prodTotalAmt;
	private String userArea;
	private int areaTotalAmt;
	
	
	public CorpMngStatisticsDTO() {
	}


	public CorpMngStatisticsDTO(String corpNo, CorpUserDTO corpUser, Date dailyDate, int dailyTotal, Date weeklyDate,
			int weeklyTotal, Date monthlyDate, int monthlyTotal, String prodCtgNo, String prodCtgName, int ctgTotalAmt,
			String prodNo, String prodName, int prodTotalAmt, String userArea, int areaTotalAmt) {
		this.corpNo = corpNo;
		this.corpUser = corpUser;
		this.dailyDate = dailyDate;
		this.dailyTotal = dailyTotal;
		this.weeklyDate = weeklyDate;
		this.weeklyTotal = weeklyTotal;
		this.monthlyDate = monthlyDate;
		this.monthlyTotal = monthlyTotal;
		this.prodCtgNo = prodCtgNo;
		this.prodCtgName = prodCtgName;
		this.ctgTotalAmt = ctgTotalAmt;
		this.prodNo = prodNo;
		this.prodName = prodName;
		this.prodTotalAmt = prodTotalAmt;
		this.userArea = userArea;
		this.areaTotalAmt = areaTotalAmt;
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


	public Date getMonthlyDate() {
		return monthlyDate;
	}


	public void setMonthlyDate(Date monthlyDate) {
		this.monthlyDate = monthlyDate;
	}


	public int getMonthlyTotal() {
		return monthlyTotal;
	}


	public void setMonthlyTotal(int monthlyTotal) {
		this.monthlyTotal = monthlyTotal;
	}


	public String getProdCtgNo() {
		return prodCtgNo;
	}


	public void setProdCtgNo(String prodCtgNo) {
		this.prodCtgNo = prodCtgNo;
	}


	public String getProdCtgName() {
		return prodCtgName;
	}


	public void setProdCtgName(String prodCtgName) {
		this.prodCtgName = prodCtgName;
	}


	public int getCtgTotalAmt() {
		return ctgTotalAmt;
	}


	public void setCtgTotalAmt(int ctgTotalAmt) {
		this.ctgTotalAmt = ctgTotalAmt;
	}


	public String getProdNo() {
		return prodNo;
	}


	public void setProdNo(String prodNo) {
		this.prodNo = prodNo;
	}


	public String getProdName() {
		return prodName;
	}


	public void setProdName(String prodName) {
		this.prodName = prodName;
	}


	public int getProdTotalAmt() {
		return prodTotalAmt;
	}


	public void setProdTotalAmt(int prodTotalAmt) {
		this.prodTotalAmt = prodTotalAmt;
	}


	public String getUserArea() {
		return userArea;
	}


	public void setUserArea(String userArea) {
		this.userArea = userArea;
	}


	public int getAreaTotalAmt() {
		return areaTotalAmt;
	}


	public void setAreaTotalAmt(int areaTotalAmt) {
		this.areaTotalAmt = areaTotalAmt;
	}


	@Override
	public String toString() {
		return "CorpMngStatisticsDTO [corpNo=" + corpNo + ", corpUser=" + corpUser + ", dailyDate=" + dailyDate
				+ ", dailyTotal=" + dailyTotal + ", weeklyDate=" + weeklyDate + ", weeklyTotal=" + weeklyTotal
				+ ", monthlyDate=" + monthlyDate + ", monthlyTotal=" + monthlyTotal + ", prodCtgNo=" + prodCtgNo
				+ ", prodCtgName=" + prodCtgName + ", ctgTotalAmt=" + ctgTotalAmt + ", prodNo=" + prodNo + ", prodName="
				+ prodName + ", prodTotalAmt=" + prodTotalAmt + ", userArea=" + userArea + ", areaTotalAmt="
				+ areaTotalAmt + "]";
	}

	
	
}
