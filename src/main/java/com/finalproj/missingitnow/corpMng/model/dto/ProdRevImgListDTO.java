package com.finalproj.missingitnow.corpMng.model.dto;

import java.io.Serializable;

public class ProdRevImgListDTO implements Serializable {
	
	private static final long serialVersionUID = 3210558465168377035L;
	private String reviewImgNo;
	private String reviewNo;
	private String reviewImgOriginName;
	private String reviewImgRename;
	private String reviewImgThnName;
	private String reviewImgPath;
	
	public ProdRevImgListDTO() {
	}

	public ProdRevImgListDTO(String reviewImgNo, String reviewNo, String reviewImgOriginName, String reviewImgRename,
			String reviewImgThnName, String reviewImgPath) {
		this.reviewImgNo = reviewImgNo;
		this.reviewNo = reviewNo;
		this.reviewImgOriginName = reviewImgOriginName;
		this.reviewImgRename = reviewImgRename;
		this.reviewImgThnName = reviewImgThnName;
		this.reviewImgPath = reviewImgPath;
	}

	public String getReviewImgNo() {
		return reviewImgNo;
	}

	public void setReviewImgNo(String reviewImgNo) {
		this.reviewImgNo = reviewImgNo;
	}

	public String getReviewNo() {
		return reviewNo;
	}

	public void setReviewNo(String reviewNo) {
		this.reviewNo = reviewNo;
	}

	public String getReviewImgOriginName() {
		return reviewImgOriginName;
	}

	public void setReviewImgOriginName(String reviewImgOriginName) {
		this.reviewImgOriginName = reviewImgOriginName;
	}

	public String getReviewImgRename() {
		return reviewImgRename;
	}

	public void setReviewImgRename(String reviewImgRename) {
		this.reviewImgRename = reviewImgRename;
	}

	public String getReviewImgThnName() {
		return reviewImgThnName;
	}

	public void setReviewImgThnName(String reviewImgThnName) {
		this.reviewImgThnName = reviewImgThnName;
	}

	public String getReviewImgPath() {
		return reviewImgPath;
	}

	public void setReviewImgPath(String reviewImgPath) {
		this.reviewImgPath = reviewImgPath;
	}

	@Override
	public String toString() {
		return "ProdRevImgListDTO [reviewImgNo=" + reviewImgNo + ", reviewNo=" + reviewNo + ", reviewImgOriginName="
				+ reviewImgOriginName + ", reviewImgRename=" + reviewImgRename + ", reviewImgThnName="
				+ reviewImgThnName + ", reviewImgPath=" + reviewImgPath + "]";
	}
	
	
	
}
