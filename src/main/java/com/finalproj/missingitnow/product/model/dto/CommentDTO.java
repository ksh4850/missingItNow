package com.finalproj.missingitnow.product.model.dto;

import java.io.Serializable;
import java.util.Date;

public class CommentDTO implements Serializable{
	
	
	private static final long serialVersionUID = -6093908173954464503L;
	
	private String prodComtNo;
	private String pordNo;
	private String userNo;
	private String pordComtDetails;
	private java.util.Date pordComtdate;
	private String pordComtDisplayChk;
	private String pordComtReplyChk;
	private String pordComtReply;
	private String userName;
	
	public CommentDTO () {}

	public CommentDTO(String prodComtNo, String pordNo, String userNo, String pordComtDetails, Date pordComtdate,
			String pordComtDisplayChk, String pordComtReplyChk, String pordComtReply, String userName) {
		super();
		this.prodComtNo = prodComtNo;
		this.pordNo = pordNo;
		this.userNo = userNo;
		this.pordComtDetails = pordComtDetails;
		this.pordComtdate = pordComtdate;
		this.pordComtDisplayChk = pordComtDisplayChk;
		this.pordComtReplyChk = pordComtReplyChk;
		this.pordComtReply = pordComtReply;
		this.userName = userName;
	}

	public String getProdComtNo() {
		return prodComtNo;
	}

	public void setProdComtNo(String prodComtNo) {
		this.prodComtNo = prodComtNo;
	}

	public String getPordNo() {
		return pordNo;
	}

	public void setPordNo(String pordNo) {
		this.pordNo = pordNo;
	}

	public String getUserNo() {
		return userNo;
	}

	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}

	public String getPordComtDetails() {
		return pordComtDetails;
	}

	public void setPordComtDetails(String pordComtDetails) {
		this.pordComtDetails = pordComtDetails;
	}

	public java.util.Date getPordComtdate() {
		return pordComtdate;
	}

	public void setPordComtdate(java.util.Date pordComtdate) {
		this.pordComtdate = pordComtdate;
	}

	public String getPordComtDisplayChk() {
		return pordComtDisplayChk;
	}

	public void setPordComtDisplayChk(String pordComtDisplayChk) {
		this.pordComtDisplayChk = pordComtDisplayChk;
	}

	public String getPordComtReplyChk() {
		return pordComtReplyChk;
	}

	public void setPordComtReplyChk(String pordComtReplyChk) {
		this.pordComtReplyChk = pordComtReplyChk;
	}

	public String getPordComtReply() {
		return pordComtReply;
	}

	public void setPordComtReply(String pordComtReply) {
		this.pordComtReply = pordComtReply;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "CommentDTO [prodComtNo=" + prodComtNo + ", pordNo=" + pordNo + ", userNo=" + userNo
				+ ", pordComtDetails=" + pordComtDetails + ", pordComtdate=" + pordComtdate + ", pordComtDisplayChk="
				+ pordComtDisplayChk + ", pordComtReplyChk=" + pordComtReplyChk + ", pordComtReply=" + pordComtReply
				+ ", userName=" + userName + "]";
	}

	
	
	
}
