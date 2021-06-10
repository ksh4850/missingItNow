package com.finalproj.missingitnow.corpMng.model.dto;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

public class ProdRevListDTO implements Serializable {
	
	private static final long serialVersionUID = 5990146952356884918L;
	private String reviewNo;
	private String orderNo;
	private String prodNo;
	private String userNo;
	private String reviewDetails;
	private int reviewScore;
	private Date reviewDate;
	private SalesMngOrderDTO salesMngOrder;
	private ProdMngProductDTO prodMngProduct;
	private UserDTO user;
	private List<ProdRevImgListDTO> prodRevImgList;
	
	public ProdRevListDTO() {
	}

	public ProdRevListDTO(String reviewNo, String orderNo, String prodNo, String userNo, String reviewDetails,
			int reviewScore, Date reviewDate, SalesMngOrderDTO salesMngOrder, ProdMngProductDTO prodMngProduct,
			UserDTO user, List<ProdRevImgListDTO> prodRevImgList) {
		this.reviewNo = reviewNo;
		this.orderNo = orderNo;
		this.prodNo = prodNo;
		this.userNo = userNo;
		this.reviewDetails = reviewDetails;
		this.reviewScore = reviewScore;
		this.reviewDate = reviewDate;
		this.salesMngOrder = salesMngOrder;
		this.prodMngProduct = prodMngProduct;
		this.user = user;
		this.prodRevImgList = prodRevImgList;
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

	public Date getReviewDate() {
		return reviewDate;
	}

	public void setReviewDate(Date reviewDate) {
		this.reviewDate = reviewDate;
	}

	public SalesMngOrderDTO getSalesMngOrder() {
		return salesMngOrder;
	}

	public void setSalesMngOrder(SalesMngOrderDTO salesMngOrder) {
		this.salesMngOrder = salesMngOrder;
	}

	public ProdMngProductDTO getProdMngProduct() {
		return prodMngProduct;
	}

	public void setProdMngProduct(ProdMngProductDTO prodMngProduct) {
		this.prodMngProduct = prodMngProduct;
	}

	public UserDTO getUser() {
		return user;
	}

	public void setUser(UserDTO user) {
		this.user = user;
	}

	public List<ProdRevImgListDTO> getProdRevImgList() {
		return prodRevImgList;
	}

	public void setProdRevImgList(List<ProdRevImgListDTO> prodRevImgList) {
		this.prodRevImgList = prodRevImgList;
	}

	@Override
	public String toString() {
		return "ProdRevListDTO [reviewNo=" + reviewNo + ", orderNo=" + orderNo + ", prodNo=" + prodNo + ", userNo="
				+ userNo + ", reviewDetails=" + reviewDetails + ", reviewScore=" + reviewScore + ", reviewDate="
				+ reviewDate + ", salesMngOrder=" + salesMngOrder + ", prodMngProduct=" + prodMngProduct + ", user="
				+ user + ", prodRevImgList=" + prodRevImgList + "]";
	}
	
	
	
	
	
}
