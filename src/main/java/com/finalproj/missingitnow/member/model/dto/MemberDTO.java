package com.finalproj.missingitnow.member.model.dto;

import java.sql.Date;

public class MemberDTO {
	
	public String userNo;
	public String userId;
	public String userPwd;
	public String userName;
	public String userBirth;
	public String userAddress;
	public String userContacts;
	public String userEmail;
	public String user_Mkt_Accepct_Chk;
	public java.sql.Date user_Regst_Date;
	public String user_Leave_Chk;
	
	public MemberDTO() {
		super();
	}

	public MemberDTO(String userNo, String userId, String userPwd, String userName, String userBirth,
			String userAddress, String userContacts, String userEmail, String user_Mkt_Accepct_Chk,
			Date user_Regst_Date, String user_Leave_Chk) {
		super();
		this.userNo = userNo;
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.userBirth = userBirth;
		this.userAddress = userAddress;
		this.userContacts = userContacts;
		this.userEmail = userEmail;
		this.user_Mkt_Accepct_Chk = user_Mkt_Accepct_Chk;
		this.user_Regst_Date = user_Regst_Date;
		this.user_Leave_Chk = user_Leave_Chk;
	}

	public String getUserNo() {
		return userNo;
	}

	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserBirth() {
		return userBirth;
	}

	public void setUserBirth(String userBirth) {
		this.userBirth = userBirth;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public String getUserContacts() {
		return userContacts;
	}

	public void setUserContacts(String userContacts) {
		this.userContacts = userContacts;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUser_Mkt_Accepct_Chk() {
		return user_Mkt_Accepct_Chk;
	}

	public void setUser_Mkt_Accepct_Chk(String user_Mkt_Accepct_Chk) {
		this.user_Mkt_Accepct_Chk = user_Mkt_Accepct_Chk;
	}

	public java.sql.Date getUser_Regst_Date() {
		return user_Regst_Date;
	}

	public void setUser_Regst_Date(java.sql.Date user_Regst_Date) {
		this.user_Regst_Date = user_Regst_Date;
	}

	public String getUser_Leave_Chk() {
		return user_Leave_Chk;
	}

	public void setUser_Leave_Chk(String user_Leave_Chk) {
		this.user_Leave_Chk = user_Leave_Chk;
	}

	@Override
	public String toString() {
		return "MemberDTO [userNo=" + userNo + ", userId=" + userId + ", userPwd=" + userPwd + ", userName=" + userName
				+ ", userBirth=" + userBirth + ", userAddress=" + userAddress + ", userContacts=" + userContacts
				+ ", userEmail=" + userEmail + ", user_Mkt_Accepct_Chk=" + user_Mkt_Accepct_Chk + ", user_Regst_Date="
				+ user_Regst_Date + ", user_Leave_Chk=" + user_Leave_Chk + "]";
	}
	
	


	
}
