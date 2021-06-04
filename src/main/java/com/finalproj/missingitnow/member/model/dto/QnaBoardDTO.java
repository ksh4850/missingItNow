package com.finalproj.missingitnow.member.model.dto;

import java.sql.Date;

public class QnaBoardDTO {
	
	private String qnaNo;
	private String userNo;
	private String qnaTitle;
	private String qnaDetails;
	private java.sql.Date qnaDate;
	private String qnaReply;
	private java.sql.Date qnaReplyDate;
	private String qnaReplyChk;
	private String qnaStatus;
	private int qnaHits;
	
	public QnaBoardDTO() {
		super();
	}

	public QnaBoardDTO(String qnaNo, String userNo, String qnaTitle, String qnaDetails, Date qnaDate, String qnaReply,
			Date qnaReplyDate, String qnaReplyChk, String qnaStatus, int qnaHits) {
		super();
		this.qnaNo = qnaNo;
		this.userNo = userNo;
		this.qnaTitle = qnaTitle;
		this.qnaDetails = qnaDetails;
		this.qnaDate = qnaDate;
		this.qnaReply = qnaReply;
		this.qnaReplyDate = qnaReplyDate;
		this.qnaReplyChk = qnaReplyChk;
		this.qnaStatus = qnaStatus;
		this.qnaHits = qnaHits;
	}



	public String getQnaNo() {
		return qnaNo;
	}

	public void setQnaNo(String qnaNo) {
		this.qnaNo = qnaNo;
	}

	public String getUserNo() {
		return userNo;
	}

	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}

	public String getQnaTitle() {
		return qnaTitle;
	}

	public void setQnaTitle(String qnaTitle) {
		this.qnaTitle = qnaTitle;
	}

	public String getQnaDetails() {
		return qnaDetails;
	}

	public void setQnaDetails(String qnaDetails) {
		this.qnaDetails = qnaDetails;
	}

	public java.sql.Date getQnaDate() {
		return qnaDate;
	}

	public void setQnaDate(java.sql.Date qnaDate) {
		this.qnaDate = qnaDate;
	}

	public String getQnaReply() {
		return qnaReply;
	}

	public void setQnaReply(String qnaReply) {
		this.qnaReply = qnaReply;
	}

	public java.sql.Date getQnaReplyDate() {
		return qnaReplyDate;
	}

	public void setQnaReplyDate(java.sql.Date qnaReplyDate) {
		this.qnaReplyDate = qnaReplyDate;
	}

	public String getQnaReplyChk() {
		return qnaReplyChk;
	}

	public void setQnaReplyChk(String qnaReplyChk) {
		this.qnaReplyChk = qnaReplyChk;
	}

	public String getQnaStatus() {
		return qnaStatus;
	}

	public void setQnaStatus(String qnaStatus) {
		this.qnaStatus = qnaStatus;
	}

	public int getQnaHits() {
		return qnaHits;
	}

	public void setQnaHits(int qnaHits) {
		this.qnaHits = qnaHits;
	}

	@Override
	public String toString() {
		return "QnaBoardDTO [qnaNo=" + qnaNo + ", userNo=" + userNo + ", qnaTitle=" + qnaTitle + ", qnaDetails="
				+ qnaDetails + ", qnaDate=" + qnaDate + ", qnaReply=" + qnaReply + ", qnaReplyDate=" + qnaReplyDate
				+ ", qnaReplyChk=" + qnaReplyChk + ", qnaStatus=" + qnaStatus + ", qnaHits=" + qnaHits + "]";
	}
	
	
}
