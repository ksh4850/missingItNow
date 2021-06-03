package com.finalproj.missingitnow.admin.membermanage.model.dto;

import java.io.Serializable;
import java.sql.Date;

public class UserDTO implements Serializable {
	
	private static final long serialVersionUID = -5348895854122756652L;
	
	private String no;
	private String id;
	private String pwd;
	private String name;
	private java.sql.Date birth;
	private String address;
	private String contacts;
	private String email;
	private String mktAcceptCheck;
	private java.sql.Date registDate;
	private String leaveChk;
	
	public UserDTO() {}
	public UserDTO(String no, String id, String pwd, String name, Date birth, String address, String contacts,
			String email, String mktAcceptCheck, Date registDate, String leaveChk) {
		this.no = no;
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.birth = birth;
		this.address = address;
		this.contacts = contacts;
		this.email = email;
		this.mktAcceptCheck = mktAcceptCheck;
		this.registDate = registDate;
		this.leaveChk = leaveChk;
	}
	
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public String getMktAcceptCheck() {
		return mktAcceptCheck;
	}
	public void setMktAcceptCheck(String mktAcceptCheck) {
		this.mktAcceptCheck = mktAcceptCheck;
	}
	public java.sql.Date getRegistDate() {
		return registDate;
	}
	public void setRegistDate(java.sql.Date registDate) {
		this.registDate = registDate;
	}
	public String getLeaveChk() {
		return leaveChk;
	}
	public void setLeaveChk(String leaveChk) {
		this.leaveChk = leaveChk;
	}
	
	@Override
	public String toString() {
		return "UserDTO [no=" + no + ", id=" + id + ", pwd=" + pwd + ", name=" + name + ", birth=" + birth
				+ ", address=" + address + ", contacts=" + contacts + ", email=" + email + ", mktAcceptCheck="
				+ mktAcceptCheck + ", registDate=" + registDate + ", leaveChk=" + leaveChk + "]";
	}
	
}
