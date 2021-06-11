package com.finalproj.missingitnow.communty.model.dto;

import java.sql.Timestamp;
import java.util.List;

import com.finalproj.missingitnow.member.model.dto.PrivateMemberDTO;

public class SPCommentDTO {
	
	private String comtNo;
	private PrivateMemberDTO user;
	private SPostDTO post;
	private String comtDetail;
	private java.sql.Timestamp comtDate;
	private String comtStatus;
	private List<SPReCommentDTO> reCommentList;
	
	public SPCommentDTO() {
		
	}
	
	public SPCommentDTO(String comtNo, PrivateMemberDTO user, SPostDTO post, String comtDetail, Timestamp comtDate,
			String comtStatus, List<SPReCommentDTO> reCommentList) {
		super();
		this.comtNo = comtNo;
		this.user = user;
		this.post = post;
		this.comtDetail = comtDetail;
		this.comtDate = comtDate;
		this.comtStatus = comtStatus;
		this.reCommentList = reCommentList;
	}
	public String getComtNo() {
		return comtNo;
	}
	public void setComtNo(String comtNo) {
		this.comtNo = comtNo;
	}
	public PrivateMemberDTO getUser() {
		return user;
	}
	public void setUser(PrivateMemberDTO user) {
		this.user = user;
	}
	public SPostDTO getPost() {
		return post;
	}
	public void setPost(SPostDTO post) {
		this.post = post;
	}
	public String getComtDetail() {
		return comtDetail;
	}
	public void setComtDetail(String comtDetail) {
		this.comtDetail = comtDetail;
	}
	public java.sql.Timestamp getComtDate() {
		return comtDate;
	}
	public void setComtDate(java.sql.Timestamp comtDate) {
		this.comtDate = comtDate;
	}
	public String getComtStatus() {
		return comtStatus;
	}
	public void setComtStatus(String comtStatus) {
		this.comtStatus = comtStatus;
	}
	public List<SPReCommentDTO> getReCommentList() {
		return reCommentList;
	}
	public void setReCommentList(List<SPReCommentDTO> reCommentList) {
		this.reCommentList = reCommentList;
	}
	@Override
	public String toString() {
		return "SPCommentDTO [comtNo=" + comtNo + ", user=" + user + ", post=" + post + ", comtDetail=" + comtDetail
				+ ", comtDate=" + comtDate + ", comtStatus=" + comtStatus + ", reCommentList=" + reCommentList + "]";
	}
	
	
	
	
	
	
	

}
