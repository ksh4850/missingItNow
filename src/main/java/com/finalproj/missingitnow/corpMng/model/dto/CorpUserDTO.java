package com.finalproj.missingitnow.corpMng.model.dto;

import java.io.Serializable;
import java.sql.Date;

public class CorpUserDTO implements Serializable {
	
	private static final long serialVersionUID = 4714078994005639839L;
	
	private String corpNo;
	private String corpId;
	private String corpPwd;
	private String corpName;
	private String corpContacts;
	private String corpAddress;
	private String corpEmail;
	private String corpRegistrationNo;
	private String corpLvNo;
	private CorpUserLvDTO corpLv;
	private double corpCommission;
	private CorpDepositDTO corpDeposit;
	private int depositAmt;
	private Date corpRegstDate;
	private String corpRegstAccepted;
	private String corpLeaveChk;
	
	public CorpUserDTO() {
	}

	public CorpUserDTO(String corpNo, String corpId, String corpPwd, String corpName, String corpContacts,
			String corpAddress, String corpEmail, String corpRegistrationNo, String corpLvNo, CorpUserLvDTO corpLv,
			double corpCommission, CorpDepositDTO corpDeposit, int depositAmt, Date corpRegstDate,
			String corpRegstAccepted, String corpLeaveChk) {
		this.corpNo = corpNo;
		this.corpId = corpId;
		this.corpPwd = corpPwd;
		this.corpName = corpName;
		this.corpContacts = corpContacts;
		this.corpAddress = corpAddress;
		this.corpEmail = corpEmail;
		this.corpRegistrationNo = corpRegistrationNo;
		this.corpLvNo = corpLvNo;
		this.corpLv = corpLv;
		this.corpCommission = corpCommission;
		this.corpDeposit = corpDeposit;
		this.depositAmt = depositAmt;
		this.corpRegstDate = corpRegstDate;
		this.corpRegstAccepted = corpRegstAccepted;
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

	public CorpUserLvDTO getCorpLv() {
		return corpLv;
	}

	public void setCorpLv(CorpUserLvDTO corpLv) {
		this.corpLv = corpLv;
	}

	public double getCorpCommission() {
		return corpCommission;
	}

	public void setCorpCommission(double corpCommission) {
		this.corpCommission = corpCommission;
	}

	public CorpDepositDTO getCorpDeposit() {
		return corpDeposit;
	}

	public void setCorpDeposit(CorpDepositDTO corpDeposit) {
		this.corpDeposit = corpDeposit;
	}

	public int getDepositAmt() {
		return depositAmt;
	}

	public void setDepositAmt(int depositAmt) {
		this.depositAmt = depositAmt;
	}

	public Date getCorpRegstDate() {
		return corpRegstDate;
	}

	public void setCorpRegstDate(Date corpRegstDate) {
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
		return "CorpUserDTO [corpNo=" + corpNo + ", corpId=" + corpId + ", corpPwd=" + corpPwd + ", corpName="
				+ corpName + ", corpContacts=" + corpContacts + ", corpAddress=" + corpAddress + ", corpEmail="
				+ corpEmail + ", corpRegistrationNo=" + corpRegistrationNo + ", corpLvNo=" + corpLvNo + ", corpLv="
				+ corpLv + ", corpCommission=" + corpCommission + ", corpDeposit=" + corpDeposit + ", depositAmt="
				+ depositAmt + ", corpRegstDate=" + corpRegstDate + ", corpRegstAccepted=" + corpRegstAccepted
				+ ", corpLeaveChk=" + corpLeaveChk + "]";
	}

	
	
	
	
}
