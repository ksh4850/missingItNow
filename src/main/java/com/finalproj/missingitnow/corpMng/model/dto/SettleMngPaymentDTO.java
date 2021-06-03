package com.finalproj.missingitnow.corpMng.model.dto;

import java.sql.Date;

public class SettleMngPaymentDTO {
	
	private String corpPayNo;
	private String corpPayUid;
	private String corpNo;
	private CorpUserDTO corpUser;
	private String corpPayMethod;
	private String corpPayDetails;
	private int corpPayAmount;
	private Date corpPayDate;
	private String corpPayChk;
	
	public SettleMngPaymentDTO() {
	}

	public SettleMngPaymentDTO(String corpPayNo, String corpPayUid, String corpNo, CorpUserDTO corpUser,
			String corpPayMethod, String corpPayDetails, int corpPayAmount, Date corpPayDate, String corpPayChk) {
		this.corpPayNo = corpPayNo;
		this.corpPayUid = corpPayUid;
		this.corpNo = corpNo;
		this.corpUser = corpUser;
		this.corpPayMethod = corpPayMethod;
		this.corpPayDetails = corpPayDetails;
		this.corpPayAmount = corpPayAmount;
		this.corpPayDate = corpPayDate;
		this.corpPayChk = corpPayChk;
	}

	public String getCorpPayNo() {
		return corpPayNo;
	}

	public void setCorpPayNo(String corpPayNo) {
		this.corpPayNo = corpPayNo;
	}

	public String getCorpPayUid() {
		return corpPayUid;
	}

	public void setCorpPayUid(String corpPayUid) {
		this.corpPayUid = corpPayUid;
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

	public String getCorpPayMethod() {
		return corpPayMethod;
	}

	public void setCorpPayMethod(String corpPayMethod) {
		this.corpPayMethod = corpPayMethod;
	}

	public String getCorpPayDetails() {
		return corpPayDetails;
	}

	public void setCorpPayDetails(String corpPayDetails) {
		this.corpPayDetails = corpPayDetails;
	}

	public int getCorpPayAmount() {
		return corpPayAmount;
	}

	public void setCorpPayAmount(int corpPayAmount) {
		this.corpPayAmount = corpPayAmount;
	}

	public Date getCorpPayDate() {
		return corpPayDate;
	}

	public void setCorpPayDate(Date corpPayDate) {
		this.corpPayDate = corpPayDate;
	}

	public String getCorpPayChk() {
		return corpPayChk;
	}

	public void setCorpPayChk(String corpPayChk) {
		this.corpPayChk = corpPayChk;
	}

	@Override
	public String toString() {
		return "SettleMngPaymentDTO [corpPayNo=" + corpPayNo + ", corpPayUid=" + corpPayUid + ", corpNo=" + corpNo
				+ ", corpUser=" + corpUser + ", corpPayMethod=" + corpPayMethod + ", corpPayDetails=" + corpPayDetails
				+ ", corpPayAmount=" + corpPayAmount + ", corpPayDate=" + corpPayDate + ", corpPayChk=" + corpPayChk
				+ "]";
	}
	
	
	
}
