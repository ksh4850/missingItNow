package com.finalproj.missingitnow.product.model.dto;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

public class CorpDTO implements Serializable {
	


	private static final long serialVersionUID = 1965507036502452306L;
	
	private String corpNo;
	private String corpId;
	private String corpPwd;
	private String corpName;
	private String corpContacts;
	private String corpAddress;
	private String corpEmail;
	private String corpRegistrationNo;
	private String corpLvNo;
	private int corpCommisson;
	private int depositAmt;
	private java.util.Date corpRegstDate;
	private String corpRegstAccpeted;
	private String corpLeaveChk;
	
	public CorpDTO() {}

	public CorpDTO(String corpNo, String corpId, String corpPwd, String corpName, String corpContacts,
			String corpAddress, String corpEmail, String corpRegistrationNo, String corpLvNo, int corpCommisson,
			int depositAmt, java.util.Date corpRegstDate, String corpRegstAccpeted, String corpLeaveChk) {
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
		this.corpCommisson = corpCommisson;
		this.depositAmt = depositAmt;
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

	public String getCorpLvNo() {
		return corpLvNo;
	}

	public void setCorpLvNo(String corpLvNo) {
		this.corpLvNo = corpLvNo;
	}

	public int getCorpCommisson() {
		return corpCommisson;
	}

	public void setCorpCommisson(int corpCommisson) {
		this.corpCommisson = corpCommisson;
	}

	public int getDepositAmt() {
		return depositAmt;
	}

	public void setDepositAmt(int depositAmt) {
		this.depositAmt = depositAmt;
	}

	public java.util.Date getCorpRegstDate() {
		return corpRegstDate;
	}

	public void setCorpRegstDate(java.util.Date corpRegstDate) {
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
				+ ", corpRegistrationNo=" + corpRegistrationNo + ", corpLvNo=" + corpLvNo + ", corpCommisson="
				+ corpCommisson + ", depositAmt=" + depositAmt + ", corpRegstDate=" + corpRegstDate
				+ ", corpRegstAccpeted=" + corpRegstAccpeted + ", corpLeaveChk=" + corpLeaveChk + "]";
	}

	
}
