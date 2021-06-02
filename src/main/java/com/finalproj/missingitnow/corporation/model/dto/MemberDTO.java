package com.finalproj.missingitnow.corporation.model.dto;

import java.io.Serializable;

public class MemberDTO implements Serializable {
	
	
	private static final long serialVersionUID = -5312901922333065903L;
	private String corpNo;
	private String corpId;
	private String corpPwd;
	private String corpName;
	private String corpContacts;
	private String corpAddress;
	private String corpEmail;
	private String corpRegistrationNo;
	private String corpLvNo;
	private double corpCommission;
	private int depositAmt;
	private java.sql.Date corpRegstDate;
	private String corpRegstAccepted;
	private String corpLeaveChk;


	public MemberDTO() {}

	public MemberDTO(String corpNo, String corpId, String corpPwd, String corpName, String corpContacts,
			String corpAddress, String corpEmail, String corpRegistrationNo, String corpLvNo, double corpCommission,
			int depositAmt, java.sql.Date corpRegstDate, String corpRegstAccepted, String corpLeaveChk) {
		super();
		this.corpNo = corpNo;
		this.corpId = corpId;
		this.corpPwd = corpPwd;
		this.corpName = corpName;
		this.corpContacts = corpContacts;
		this.corpAddress = corpAddress;
		this.corpEmail = corpEmail;
		this.corpRegistrationNo = corpRegistrationNo;
		this.corpLvNo = corpLvNo;
		this.corpCommission = corpCommission;
		this.depositAmt = depositAmt;
		this.corpRegstDate = corpRegstDate;
		this.corpRegstAccepted = corpRegstAccepted;
		this.corpLeaveChk = corpLeaveChk;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String getCorpNo() {
		return corpNo;
	}

	public void setCorpNo(String corpNo) {
		this.corpNo = corpNo;
	}

	public String getCorpId() {
		return corpId;
	}

	public void setCorpId(String corpId) {
		this.corpId = corpId;
	}

	public String getCorpPwd() {
		return corpPwd;
	}

	public void setCorpPwd(String corpPwd) {
		this.corpPwd = corpPwd;
	}

	public String getCorpName() {
		return corpName;
	}

	public void setCorpName(String corpName) {
		this.corpName = corpName;
	}

	public String getCorpContacts() {
		return corpContacts;
	}

	public void setCorpContacts(String corpContacts) {
		this.corpContacts = corpContacts;
	}

	public String getCorpAddress() {
		return corpAddress;
	}

	public void setCorpAddress(String corpAddress) {
		this.corpAddress = corpAddress;
	}

	public String getCorpEmail() {
		return corpEmail;
	}

	public void setCorpEmail(String corpEmail) {
		this.corpEmail = corpEmail;
	}

	public String getCorpRegistrationNo() {
		return corpRegistrationNo;
	}

	public void setCorpRegistrationNo(String corpRegistrationNo) {
		this.corpRegistrationNo = corpRegistrationNo;
	}

	public String getCorpLvNo() {
		return corpLvNo;
	}

	public void setCorpLvNo(String corpLvNo) {
		this.corpLvNo = corpLvNo;
	}

	public double getCorpCommission() {
		return corpCommission;
	}

	public void setCorpCommission(double corpCommission) {
		this.corpCommission = corpCommission;
	}

	public int getDepositAmt() {
		return depositAmt;
	}

	public void setDepositAmt(int depositAmt) {
		this.depositAmt = depositAmt;
	}

	public java.sql.Date getCorpRegstDate() {
		return corpRegstDate;
	}

	public void setCorpRegstDate(java.sql.Date corpRegstDate) {
		this.corpRegstDate = corpRegstDate;
	}

	public String getCorpRegstAccepted() {
		return corpRegstAccepted;
	}

	public void setCorpRegstAccepted(String corpRegstAccepted) {
		this.corpRegstAccepted = corpRegstAccepted;
	}

	public String getCorpLeaveChk() {
		return corpLeaveChk;
	}

	public void setCorpLeaveChk(String corpLeaveChk) {
		this.corpLeaveChk = corpLeaveChk;
	}

	@Override
	public String toString() {
		return "MemberDTO [corpNo=" + corpNo + ", corpId=" + corpId + ", corpPwd=" + corpPwd + ", corpName=" + corpName
				+ ", corpContacts=" + corpContacts + ", corpAddress=" + corpAddress + ", corpEmail=" + corpEmail
				+ ", corpRegistrationNo=" + corpRegistrationNo + ", corpLvNo=" + corpLvNo + ", corpCommission="
				+ corpCommission + ", depositAmt=" + depositAmt + ", corpRegstDate=" + corpRegstDate
				+ ", corpRegstAccepted=" + corpRegstAccepted + ", corpLeaveChk=" + corpLeaveChk + "]";
	}
	
	
}
