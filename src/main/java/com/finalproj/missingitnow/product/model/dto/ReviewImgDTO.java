package com.finalproj.missingitnow.product.model.dto;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

public class ReviewImgDTO implements Serializable {

	private static final long serialVersionUID = -8083381721354867707L;
	
	private String reviewImgNo;
	private String reviewNo;
	private String revImgOriginName;
	private String revImgRename;
	private String revImgThnName;
	private String revImgPath;
	public ReviewImgDTO(String reviewImgNo, String reviewNo, String revImgOriginName, String revImgRename,
			String revImgThnName, String revImgPath) {
		super();
		this.reviewImgNo = reviewImgNo;
		this.reviewNo = reviewNo;
		this.revImgOriginName = revImgOriginName;
		this.revImgRename = revImgRename;
		this.revImgThnName = revImgThnName;
		this.revImgPath = revImgPath;
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
	public String getRevImgOriginName() {
		return revImgOriginName;
	}
	public void setRevImgOriginName(String revImgOriginName) {
		this.revImgOriginName = revImgOriginName;
	}
	public String getRevImgRename() {
		return revImgRename;
	}
	public void setRevImgRename(String revImgRename) {
		this.revImgRename = revImgRename;
	}
	public String getRevImgThnName() {
		return revImgThnName;
	}
	public void setRevImgThnName(String revImgThnName) {
		this.revImgThnName = revImgThnName;
	}
	public String getRevImgPath() {
		return revImgPath;
	}
	public void setRevImgPath(String revImgPath) {
		this.revImgPath = revImgPath;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "ReviewImgDTO [reviewImgNo=" + reviewImgNo + ", reviewNo=" + reviewNo + ", revImgOriginName="
				+ revImgOriginName + ", revImgRename=" + revImgRename + ", revImgThnName=" + revImgThnName
				+ ", revImgPath=" + revImgPath + "]";
	}
	
	
}
