package com.finalproj.missingitnow.member.model.dto;

import com.finalproj.missingitnow.product.model.dto.ProductDTO;

public class MyPageReviewDTO {
	
	private String reviewNo;
	private String orderNo;
	private String prodNo;
	private String userNo;
	private String reviewDetails;
	private int reviewScore;
	private String reviewDate;
	private ProductDTO productDTO;
	private MyPageOrderDTO orderDTO;
	
	
	public MyPageReviewDTO() {
		super();
	}


	public MyPageReviewDTO(String reviewNo, String orderNo, String prodNo, String userNo, String reviewDetails,
			int reviewScore, String reviewDate, ProductDTO productDTO, MyPageOrderDTO orderDTO) {
		super();
		this.reviewNo = reviewNo;
		this.orderNo = orderNo;
		this.prodNo = prodNo;
		this.userNo = userNo;
		this.reviewDetails = reviewDetails;
		this.reviewScore = reviewScore;
		this.reviewDate = reviewDate;
		this.productDTO = productDTO;
		this.orderDTO = orderDTO;
	}


	public String getReviewNo() {
		return reviewNo;
	}


	public void setReviewNo(String reviewNo) {
		this.reviewNo = reviewNo;
	}


	public String getOrderNo() {
		return orderNo;
	}


	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
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


	public ProductDTO getProductDTO() {
		return productDTO;
	}


	public void setProductDTO(ProductDTO productDTO) {
		this.productDTO = productDTO;
	}


	public MyPageOrderDTO getOrderDTO() {
		return orderDTO;
	}


	public void setOrderDTO(MyPageOrderDTO orderDTO) {
		this.orderDTO = orderDTO;
	}


	@Override
	public String toString() {
		return "MyPageReviewDTO [reviewNo=" + reviewNo + ", orderNo=" + orderNo + ", prodNo=" + prodNo + ", userNo="
				+ userNo + ", reviewDetails=" + reviewDetails + ", reviewScore=" + reviewScore + ", reviewDate="
				+ reviewDate + ", productDTO=" + productDTO + ", orderDTO=" + orderDTO + "]";
	}



	
}
