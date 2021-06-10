package com.finalproj.missingitnow.admin.qna.model.dto;

import java.io.Serializable;
import java.sql.Date;

import com.finalproj.missingitnow.corpMng.model.dto.CorpUserDTO;

public class QNADTO implements Serializable{

	private static final long serialVersionUID = -7645546289609771225L;
	
	private String no;
	private String userNo;
	private String title;
	private String details;
	private java.sql.Date date;
	private String reply;
	private java.sql.Date replyDate;
	private String replyChk;
	private String status;
	private int hits;
	
	private UserDTO user;
	private CorpUserDTO corpUser;
	
	public QNADTO() {}
	public QNADTO(String no, String userNo, String title, String details, Date date, String reply, Date replyDate,
			String replyChk, String status, int hits, UserDTO user, CorpUserDTO corpUser) {
		this.no = no;
		this.userNo = userNo;
		this.title = title;
		this.details = details;
		this.date = date;
		this.reply = reply;
		this.replyDate = replyDate;
		this.replyChk = replyChk;
		this.status = status;
		this.hits = hits;
		this.user = user;
		this.corpUser = corpUser;
	}
	
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getUserNo() {
		return userNo;
	}
	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public java.sql.Date getDate() {
		return date;
	}
	public void setDate(java.sql.Date date) {
		this.date = date;
	}
	public String getReply() {
		return reply;
	}
	public void setReply(String reply) {
		this.reply = reply;
	}
	public java.sql.Date getReplyDate() {
		return replyDate;
	}
	public void setReplyDate(java.sql.Date replyDate) {
		this.replyDate = replyDate;
	}
	public String getReplyChk() {
		return replyChk;
	}
	public void setReplyChk(String replyChk) {
		this.replyChk = replyChk;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getHits() {
		return hits;
	}
	public void setHits(int hits) {
		this.hits = hits;
	}
	public UserDTO getUser() {
		return user;
	}
	public void setUser(UserDTO user) {
		this.user = user;
	}
	public CorpUserDTO getCorpUser() {
		return corpUser;
	}
	public void setCorpUser(CorpUserDTO corpUser) {
		this.corpUser = corpUser;
	}

	@Override
	public String toString() {
		return "QNADTO [no=" + no + ", userNo=" + userNo + ", title=" + title + ", details=" + details + ", date="
				+ date + ", reply=" + reply + ", replyDate=" + replyDate + ", replyChk=" + replyChk + ", status="
				+ status + ", hits=" + hits + ", user=" + user + ", corpUser=" + corpUser + "]";
	}
	
}
