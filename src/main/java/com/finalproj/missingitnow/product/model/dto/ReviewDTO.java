package com.finalproj.missingitnow.product.model.dto;

import java.io.Serializable;

public class ReviewDTO implements Serializable{

	
	private static final long serialVersionUID = -6018374743504482103L;
	
	private String reviewNo;
	private String prodNo;
	private String userNo;
	private String reviewDetails;
	private int reviewScore;
	private String reviewDate;
	private String nickname;
	
	public ReviewDTO () {}

	public ReviewDTO(String reviewNo, String prodNo, String userNo, String reviewDetails, int reviewScore,
			String reviewDate, String nickname) {
		super();
		this.reviewNo = reviewNo;
		this.prodNo = prodNo;
		this.userNo = userNo;
		this.reviewDetails = reviewDetails;
		this.reviewScore = reviewScore;
		this.reviewDate = reviewDate;
		this.nickname = nickname;
	}

	public String getReviewNo() {
		return reviewNo;
	}

	public void setReviewNo(String reviewNo) {
		this.reviewNo = reviewNo;
	}

	public String getProdNo() {
		return prodNo;
	}

	public void setProdNo(String prodNo) {
		this.prodNo = prodNo;
	}

	public String getUserNo() {
		return userNo;
	}

	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}

	public String getReviewDetails() {
		return reviewDetails;
	}

	public void setReviewDetails(String reviewDetails) {
		this.reviewDetails = reviewDetails;
	}

	public int getReviewScore() {
		return reviewScore;
	}

	public void setReviewScore(int reviewScore) {
		this.reviewScore = reviewScore;
	}

	public String getReviewDate() {
		return reviewDate;
	}

	public void setReviewDate(String reviewDate) {
		this.reviewDate = reviewDate;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "ReviewDTO [reviewNo=" + reviewNo + ", prodNo=" + prodNo + ", userNo=" + userNo + ", reviewDetails="
				+ reviewDetails + ", reviewScore=" + reviewScore + ", reviewDate=" + reviewDate + ", nickname="
				+ nickname + "]";
	}

	
	
}

