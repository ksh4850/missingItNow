package com.finalproj.missingitnow.communty.model.dto;

import java.sql.Timestamp;
import java.util.List;

import com.finalproj.missingitnow.member.model.dto.PrivateMemberDTO;

public class SPostDTO {
	private String postNo;
	private PrivateMemberDTO user;
	private String housingType;
	private String acreage;
	private String residenceType;
	private String cost;
	private String postDetail;
	private java.sql.Timestamp postDate;
	private String postStatus;
	private int postHits;
	private int postLikes;
	private List<SPCommentDTO> commentList;
	private int communtCount;
	private String likeStatus;
	
	public SPostDTO() {
		
	}

	public SPostDTO(String postNo, PrivateMemberDTO user, String housingType, String acreage, String residenceType,
			String cost, String postDetail, Timestamp postDate, String postStatus, int postHits, int postLikes,
			List<SPCommentDTO> commentList, int communtCount, String likeStatus) {
		super();
		this.postNo = postNo;
		this.user = user;
		this.housingType = housingType;
		this.acreage = acreage;
		this.residenceType = residenceType;
		this.cost = cost;
		this.postDetail = postDetail;
		this.postDate = postDate;
		this.postStatus = postStatus;
		this.postHits = postHits;
		this.postLikes = postLikes;
		this.commentList = commentList;
		this.communtCount = communtCount;
		this.likeStatus = likeStatus;
	}

	public String getPostNo() {
		return postNo;
	}

	public void setPostNo(String postNo) {
		this.postNo = postNo;
	}

	public PrivateMemberDTO getUser() {
		return user;
	}

	public void setUser(PrivateMemberDTO user) {
		this.user = user;
	}

	public String getHousingType() {
		return housingType;
	}

	public void setHousingType(String housingType) {
		this.housingType = housingType;
	}

	public String getAcreage() {
		return acreage;
	}

	public void setAcreage(String acreage) {
		this.acreage = acreage;
	}

	public String getResidenceType() {
		return residenceType;
	}

	public void setResidenceType(String residenceType) {
		this.residenceType = residenceType;
	}

	public String getCost() {
		return cost;
	}

	public void setCost(String cost) {
		this.cost = cost;
	}

	public String getPostDetail() {
		return postDetail;
	}

	public void setPostDetail(String postDetail) {
		this.postDetail = postDetail;
	}

	public java.sql.Timestamp getPostDate() {
		return postDate;
	}

	public void setPostDate(java.sql.Timestamp postDate) {
		this.postDate = postDate;
	}

	public String getPostStatus() {
		return postStatus;
	}

	public void setPostStatus(String postStatus) {
		this.postStatus = postStatus;
	}

	public int getPostHits() {
		return postHits;
	}

	public void setPostHits(int postHits) {
		this.postHits = postHits;
	}

	public int getPostLikes() {
		return postLikes;
	}

	public void setPostLikes(int postLikes) {
		this.postLikes = postLikes;
	}

	public List<SPCommentDTO> getCommentList() {
		return commentList;
	}

	public void setCommentList(List<SPCommentDTO> commentList) {
		this.commentList = commentList;
	}

	public int getCommuntCount() {
		return communtCount;
	}

	public void setCommuntCount(int communtCount) {
		this.communtCount = communtCount;
	}

	public String getLikeStatus() {
		return likeStatus;
	}

	public void setLikeStatus(String likeStatus) {
		this.likeStatus = likeStatus;
	}

	@Override
	public String toString() {
		return "SPostDTO [postNo=" + postNo + ", user=" + user + ", housingType=" + housingType + ", acreage=" + acreage
				+ ", residenceType=" + residenceType + ", cost=" + cost + ", postDetail=" + postDetail + ", postDate="
				+ postDate + ", postStatus=" + postStatus + ", postHits=" + postHits + ", postLikes=" + postLikes
				+ ", commentList=" + commentList + ", communtCount=" + communtCount + ", likeStatus=" + likeStatus
				+ "]";
	}

	

	
	
	

}
