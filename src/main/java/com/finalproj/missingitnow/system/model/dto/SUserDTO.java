package com.finalproj.missingitnow.system.model.dto;

import java.sql.Date;

public class SUserDTO {
	
	private String userNo;
	private String userId;
	private String pwd;
	private String userName;
	private java.sql.Date birth;
	private String address;
	private String contacts;
	private String email;
	private String mktAccept;
	private java.sql.Date regstDate;
	private String userLeave;
	
	public SUserDTO() {
		
	}
	
	public SUserDTO(String userNo, String userId, String pwd, String userName, Date birth, String address,
			String contacts, String email, String mktAccept, Date regstDate, String userLeave) {
		super();
		this.userNo = userNo;
		this.userId = userId;
		this.pwd = pwd;
		this.userName = userName;
		this.birth = birth;
		this.address = address;
		this.contacts = contacts;
		this.email = email;
		this.mktAccept = mktAccept;
		this.regstDate = regstDate;
		this.userLeave = userLeave;
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
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public java.sql.Date getBirth() {
		return birth;
	}
	public void setBirth(java.sql.Date birth) {
		this.birth = birth;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getContacts() {
		return contacts;
	}
	public void setContacts(String contacts) {
		this.contacts = contacts;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMktAccept() {
		return mktAccept;
	}
	public void setMktAccept(String mktAccept) {
		this.mktAccept = mktAccept;
	}
	public java.sql.Date getRegstDate() {
		return regstDate;
	}
	public void setRegstDate(java.sql.Date regstDate) {
		this.regstDate = regstDate;
	}
	public String getUserLeave() {
		return userLeave;
	}
	public void setUserLeave(String userLeave) {
		this.userLeave = userLeave;
	}
	@Override
	public String toString() {
		return "userDTO [userNo=" + userNo + ", userId=" + userId + ", pwd=" + pwd + ", userName=" + userName
				+ ", birth=" + birth + ", address=" + address + ", contacts=" + contacts + ", email=" + email
				+ ", mktAccept=" + mktAccept + ", regstDate=" + regstDate + ", userLeave=" + userLeave + "]";
	}
	
	
	

}
