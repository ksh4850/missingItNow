package com.finalproj.missingitnow.corpMng.model.dto;

import java.io.Serializable;
import java.sql.Date;

public class UserDTO implements Serializable {
	
	private static final long serialVersionUID = -5348895854122756652L;
	
	private String userNo;
	private String userId;
	private String userPwd;
	private String userName;
	private Date userBirth;
	private String userAddress;
	private String userContacts;
	private String userEmail;
	private String userMktAcceptChk;
	private Date userRegstDate;
	private String userLeaveChk;
	
	public UserDTO() {
	}
	
	public UserDTO(String userNo, String userId, String userPwd, String userName, Date userBirth, String userAddress,
			String userContacts, String userEmail, String userMktAcceptChk, Date userRegstDate, String userLeaveChk) {
		this.userNo = userNo;
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.userBirth = userBirth;
		this.userAddress = userAddress;
		this.userContacts = userContacts;
		this.userEmail = userEmail;
		this.userMktAcceptChk = userMktAcceptChk;
		this.userRegstDate = userRegstDate;
		this.userLeaveChk = userLeaveChk;
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
	public Date getUserBirth() {
		return userBirth;
	}
	public void setUserBirth(Date userBirth) {
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
	public String getUserMktAcceptChk() {
		return userMktAcceptChk;
	}
	public void setUserMktAcceptChk(String userMktAcceptChk) {
		this.userMktAcceptChk = userMktAcceptChk;
	}
	public Date getUserRegstDate() {
		return userRegstDate;
	}
	public void setUserRegstDate(Date userRegstDate) {
		this.userRegstDate = userRegstDate;
	}
	public String getUserLeaveChk() {
		return userLeaveChk;
	}
	public void setUserLeaveChk(String userLeaveChk) {
		this.userLeaveChk = userLeaveChk;
	}
	
	@Override
	public String toString() {
		return "UserDTO [userNo=" + userNo + ", userId=" + userId + ", userPwd=" + userPwd + ", userName=" + userName
				+ ", userBirth=" + userBirth + ", userAddress=" + userAddress + ", userContacts=" + userContacts
				+ ", userEmail=" + userEmail + ", userMktAcceptChk=" + userMktAcceptChk + ", userRegstDate="
				+ userRegstDate + ", userLeaveChk=" + userLeaveChk + "]";
	}
	
	
	
}
