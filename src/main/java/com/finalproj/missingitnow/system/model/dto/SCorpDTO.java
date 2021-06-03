package com.finalproj.missingitnow.system.model.dto;

import java.sql.Date;

public class SCorpDTO implements java.io.Serializable {
	
	

	private static final long serialVersionUID = -5850525472660921551L;
	private String corpNo;		
	private String corpId;
	private String corpPwd;
	private String corpName;
	private String corpContacts;
	private String corpAddress;
	private String corpEmail;
	private String corpRegistrationNo;
	private SCorpLvDTO corpLv;
	private double corpCommission;
	private int depositAtm;
	private java.sql.Date corpRegstDate;
	private String corpRegstAccpeted;
	private String corpLeaveChk;
	
	public SCorpDTO() {
		
	}

	public SCorpDTO(String corpNo, String corpId, String corpPwd, String corpName, String corpContacts,
			String corpAddress, String corpEmail, String corpRegistrationNo, SCorpLvDTO corpLv, double corpCommission,
			int depositAtm, Date corpRegstDate, String corpRegstAccpeted, String corpLeaveChk) {
		super();
		this.corpNo = corpNo;
		this.corpId = corpId;
		this.corpPwd = corpPwd;
		this.corpName = corpName;
		this.corpContacts = corpContacts;
		this.corpAddress = corpAddress;
		this.corpEmail = corpEmail;
		this.corpRegistrationNo = corpRegistrationNo;
		this.corpLv = corpLv;
		this.corpCommission = corpCommission;
		this.depositAtm = depositAtm;
		this.corpRegstDate = corpRegstDate;
		this.corpRegstAccpeted = corpRegstAccpeted;
		this.corpLeaveChk = corpLeaveChk;
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

	public SCorpLvDTO getCorpLv() {
		return corpLv;
	}

	public void setCorpLv(SCorpLvDTO corpLv) {
		this.corpLv = corpLv;
	}

	public double getCorpCommission() {
		return corpCommission;
	}

	public void setCorpCommission(double corpCommission) {
		this.corpCommission = corpCommission;
	}

	public int getDepositAtm() {
		return depositAtm;
	}

	public void setDepositAtm(int depositAtm) {
		this.depositAtm = depositAtm;
	}

	public java.sql.Date getCorpRegstDate() {
		return corpRegstDate;
	}

	public void setCorpRegstDate(java.sql.Date corpRegstDate) {
		this.corpRegstDate = corpRegstDate;
	}

	public String getCorpRegstAccpeted() {
		return corpRegstAccpeted;
	}

	public void setCorpRegstAccpeted(String corpRegstAccpeted) {
		this.corpRegstAccpeted = corpRegstAccpeted;
	}

	public String getCorpLeaveChk() {
		return corpLeaveChk;
	}

	public void setCorpLeaveChk(String corpLeaveChk) {
		this.corpLeaveChk = corpLeaveChk;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "CorpDTO [corpNo=" + corpNo + ", corpId=" + corpId + ", corpPwd=" + corpPwd + ", corpName=" + corpName
				+ ", corpContacts=" + corpContacts + ", corpAddress=" + corpAddress + ", corpEmail=" + corpEmail
				+ ", corpRegistrationNo=" + corpRegistrationNo + ", corpLv=" + corpLv + ", corpCommission="
				+ corpCommission + ", depositAtm=" + depositAtm + ", corpRegstDate=" + corpRegstDate
				+ ", corpRegstAccpeted=" + corpRegstAccpeted + ", corpLeaveChk=" + corpLeaveChk + "]";
	}
	
	
	


}
