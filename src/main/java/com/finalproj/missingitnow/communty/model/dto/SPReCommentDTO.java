package com.finalproj.missingitnow.communty.model.dto;

import java.sql.Timestamp;

import com.finalproj.missingitnow.member.model.dto.PrivateMemberDTO;

public class SPReCommentDTO {
	
	private String reComtNo;
	private PrivateMemberDTO user;
	private SPCommentDTO comment;
	private String reComtDetail;
	private java.sql.Timestamp reComtDate;
	private String reComtStatus;
	
	public SPReCommentDTO() {
		
	}
	
	public SPReCommentDTO(String reComtNo, PrivateMemberDTO user, SPCommentDTO comment, String reComtDetail,
			Timestamp reComtDate, String reComtStatus) {
		super();
		this.reComtNo = reComtNo;
		this.user = user;
		this.comment = comment;
		this.reComtDetail = reComtDetail;
		this.reComtDate = reComtDate;
		this.reComtStatus = reComtStatus;
	}
	
	

	public String getReComtNo() {
		return reComtNo;
	}

	public void setReComtNo(String reComtNo) {
		this.reComtNo = reComtNo;
	}

	public PrivateMemberDTO getUser() {
		return user;
	}

	public void setUser(PrivateMemberDTO user) {
		this.user = user;
	}

	public SPCommentDTO getComment() {
		return comment;
	}

	public void setComment(SPCommentDTO comment) {
		this.comment = comment;
	}

	public String getReComtDetail() {
		return reComtDetail;
	}

	public void setReComtDetail(String reComtDetail) {
		this.reComtDetail = reComtDetail;
	}

	public java.sql.Timestamp getReComtDate() {
		return reComtDate;
	}

	public void setReComtDate(java.sql.Timestamp reComtDate) {
		this.reComtDate = reComtDate;
	}

	public String getReComtStatus() {
		return reComtStatus;
	}

	public void setReComtStatus(String reComtStatus) {
		this.reComtStatus = reComtStatus;
	}

	@Override
	public String toString() {
		return "SPReCommentDTO [reComtNo=" + reComtNo + ", user=" + user + ", comment=" + comment + ", reComtDetail="
				+ reComtDetail + ", reComtDate=" + reComtDate + ", reComtStatus=" + reComtStatus + "]";
	}
	
	
	
	

}
