package com.finalproj.missingitnow.corpMng.model.dto;

import java.io.Serializable;
import java.sql.Date;

public class CorpMngNoticeDTO implements Serializable {
	
	private static final long serialVersionUID = 2064445041157239145L;
	
	private String noticeNo;
	private String noticeTitle;
	private String noticeDetails;
	private Date noticeDate;
	private String noticeDisplayChk;
	private String noticeStatus;
	private int noticeHits;
	
	public CorpMngNoticeDTO() {
	}
	
	public CorpMngNoticeDTO(String noticeNo, String noticeTitle, String noticeDetails, Date noticeDate,
			String noticeDisplayChk, String noticeStatus, int noticeHits) {
		this.noticeNo = noticeNo;
		this.noticeTitle = noticeTitle;
		this.noticeDetails = noticeDetails;
		this.noticeDate = noticeDate;
		this.noticeDisplayChk = noticeDisplayChk;
		this.noticeStatus = noticeStatus;
		this.noticeHits = noticeHits;
	}
	public String getNoticeNo() {
		return noticeNo;
	}
	public void setNoticeNo(String noticeNo) {
		this.noticeNo = noticeNo;
	}
	public String getNoticeTitle() {
		return noticeTitle;
	}
	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}
	public String getNoticeDetails() {
		return noticeDetails;
	}
	public void setNoticeDetails(String noticeDetails) {
		this.noticeDetails = noticeDetails;
	}
	public Date getNoticeDate() {
		return noticeDate;
	}
	public void setNoticeDate(Date noticeDate) {
		this.noticeDate = noticeDate;
	}
	public String getNoticeDisplayChk() {
		return noticeDisplayChk;
	}
	public void setNoticeDisplayChk(String noticeDisplayChk) {
		this.noticeDisplayChk = noticeDisplayChk;
	}
	public String getNoticeStatus() {
		return noticeStatus;
	}
	public void setNoticeStatus(String noticeStatus) {
		this.noticeStatus = noticeStatus;
	}
	public int getNoticeHits() {
		return noticeHits;
	}
	public void setNoticeHits(int noticeHits) {
		this.noticeHits = noticeHits;
	}
	@Override
	public String toString() {
		return "CorpMngNoticeDTO [noticeNo=" + noticeNo + ", noticeTitle=" + noticeTitle + ", noticeDetails="
				+ noticeDetails + ", noticeDate=" + noticeDate + ", noticeDisplayChk=" + noticeDisplayChk
				+ ", noticeStatus=" + noticeStatus + ", noticeHits=" + noticeHits + "]";
	}
	
	
	
}
