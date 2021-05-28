package com.finalproj.missingitnow.admin.notice.model.dto;

import java.sql.Date;

public class NoticeDTO {

	private String no;
	private String title;
	private String details;
	private java.sql.Date date;
	private String displayChk;
	private String imgNo;
	private int hits;
	
	public NoticeDTO() {}
	public NoticeDTO(String no, String title, String details, Date date, String displayChk, String imgNo, int hits) {
		this.no = no;
		this.title = title;
		this.details = details;
		this.date = date;
		this.displayChk = displayChk;
		this.imgNo = imgNo;
		this.hits = hits;
	}
	
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
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
	public String getDisplayChk() {
		return displayChk;
	}
	public void setDisplayChk(String displayChk) {
		this.displayChk = displayChk;
	}
	public String getImgNo() {
		return imgNo;
	}
	public void setImgNo(String imgNo) {
		this.imgNo = imgNo;
	}
	public int getHits() {
		return hits;
	}
	public void setHits(int hits) {
		this.hits = hits;
	}
	
	@Override
	public String toString() {
		return "NoticeDTO [no=" + no + ", title=" + title + ", details=" + details + ", date=" + date + ", displayChk="
				+ displayChk + ", imgNo=" + imgNo + ", hits=" + hits + "]";
	}
	
}
