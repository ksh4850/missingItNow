package com.finalproj.missingitnow.member.model.dto;

import java.sql.Date;

import com.finalproj.missingitnow.product.model.dto.ProductDTO;

public class CartDTO {
	
	private String wishListNo;
	private String userNo;
	private java.sql.Date wishListDate;
	private String wishListStatus;
	private String prodNo;
	private String prodAmount;
	private ProductDTO productDTO;
	
	public CartDTO() {
		super();
	}

	public CartDTO(String wishListNo, String userNo, Date wishListDate, String wishListStatus, String prodNo,
			String prodAmount, ProductDTO productDTO) {
		super();
		this.wishListNo = wishListNo;
		this.userNo = userNo;
		this.wishListDate = wishListDate;
		this.wishListStatus = wishListStatus;
		this.prodNo = prodNo;
		this.prodAmount = prodAmount;
		this.productDTO = productDTO;
	}

	public String getWishListNo() {
		return wishListNo;
	}

	public void setWishListNo(String wishListNo) {
		this.wishListNo = wishListNo;
	}

	public String getUserNo() {
		return userNo;
	}

	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}

	public java.sql.Date getWishListDate() {
		return wishListDate;
	}

	public void setWishListDate(java.sql.Date wishListDate) {
		this.wishListDate = wishListDate;
	}

	public String getWishListStatus() {
		return wishListStatus;
	}

	public void setWishListStatus(String wishListStatus) {
		this.wishListStatus = wishListStatus;
	}

	public String getProdNo() {
		return prodNo;
	}

	public void setProdNo(String prodNo) {
		this.prodNo = prodNo;
	}

	public String getProdAmount() {
		return prodAmount;
	}

	public void setProdAmount(String prodAmount) {
		this.prodAmount = prodAmount;
	}

	public ProductDTO getProductDTO() {
		return productDTO;
	}

	public void setProductDTO(ProductDTO productDTO) {
		this.productDTO = productDTO;
	}

	@Override
	public String toString() {
		return "CartDTO [wishListNo=" + wishListNo + ", userNo=" + userNo + ", wishListDate=" + wishListDate
				+ ", wishListStatus=" + wishListStatus + ", prodNo=" + prodNo + ", prodAmount=" + prodAmount
				+ ", productDTO=" + productDTO + "]";
	}






	
	
	
}
