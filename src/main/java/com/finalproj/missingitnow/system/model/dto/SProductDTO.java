package com.finalproj.missingitnow.system.model.dto;

import java.sql.Date;

public class SProductDTO {
	
	private String prodNo;
	private String prodName;
	private int prodPrice;
	private String prodDetails;
	private java.sql.Date prodUploadDate;
	private java.sql.Date prodTerminateDate;
	private int prodDiscountRate;
	private java.sql.Date prodDiscountPeriod;
	private String prodManufacturer;
	private int stockQuantity;
	private String prodDisplayChk;
	private String prodCtgNo;
	private String corpNo;
	private int prodHits;
	private SCategoryDTO category;
	
	public SProductDTO() {
		
	}

	public SProductDTO(String prodNo, String prodName, int prodPrice, String prodDetails, Date prodUploadDate,
			Date prodTerminateDate, int prodDiscountRate, Date prodDiscountPeriod, String prodManufacturer,
			int stockQuantity, String prodDisplayChk, String prodCtgNo, String corpNo, int prodHits,
			SCategoryDTO category) {
		super();
		this.prodNo = prodNo;
		this.prodName = prodName;
		this.prodPrice = prodPrice;
		this.prodDetails = prodDetails;
		this.prodUploadDate = prodUploadDate;
		this.prodTerminateDate = prodTerminateDate;
		this.prodDiscountRate = prodDiscountRate;
		this.prodDiscountPeriod = prodDiscountPeriod;
		this.prodManufacturer = prodManufacturer;
		this.stockQuantity = stockQuantity;
		this.prodDisplayChk = prodDisplayChk;
		this.prodCtgNo = prodCtgNo;
		this.corpNo = corpNo;
		this.prodHits = prodHits;
		this.category = category;
	}
	

	public String getProdNo() {
		return prodNo;
	}

	public void setProdNo(String prodNo) {
		this.prodNo = prodNo;
	}

	public String getProdName() {
		return prodName;
	}

	public void setProdName(String prodName) {
		this.prodName = prodName;
	}

	public int getProdPrice() {
		return prodPrice;
	}

	public void setProdPrice(int prodPrice) {
		this.prodPrice = prodPrice;
	}

	public String getProdDetails() {
		return prodDetails;
	}

	public void setProdDetails(String prodDetails) {
		this.prodDetails = prodDetails;
	}

	public java.sql.Date getProdUploadDate() {
		return prodUploadDate;
	}

	public void setProdUploadDate(java.sql.Date prodUploadDate) {
		this.prodUploadDate = prodUploadDate;
	}

	public java.sql.Date getProdTerminateDate() {
		return prodTerminateDate;
	}

	public void setProdTerminateDate(java.sql.Date prodTerminateDate) {
		this.prodTerminateDate = prodTerminateDate;
	}

	public int getProdDiscountRate() {
		return prodDiscountRate;
	}

	public void setProdDiscountRate(int prodDiscountRate) {
		this.prodDiscountRate = prodDiscountRate;
	}

	public java.sql.Date getProdDiscountPeriod() {
		return prodDiscountPeriod;
	}

	public void setProdDiscountPeriod(java.sql.Date prodDiscountPeriod) {
		this.prodDiscountPeriod = prodDiscountPeriod;
	}

	public String getProdManufacturer() {
		return prodManufacturer;
	}

	public void setProdManufacturer(String prodManufacturer) {
		this.prodManufacturer = prodManufacturer;
	}

	public int getStockQuantity() {
		return stockQuantity;
	}

	public void setStockQuantity(int stockQuantity) {
		this.stockQuantity = stockQuantity;
	}

	public String getProdDisplayChk() {
		return prodDisplayChk;
	}

	public void setProdDisplayChk(String prodDisplayChk) {
		this.prodDisplayChk = prodDisplayChk;
	}

	public String getProdCtgNo() {
		return prodCtgNo;
	}

	public void setProdCtgNo(String prodCtgNo) {
		this.prodCtgNo = prodCtgNo;
	}

	public String getCorpNo() {
		return corpNo;
	}

	public void setCorpNo(String corpNo) {
		this.corpNo = corpNo;
	}

	public int getProdHits() {
		return prodHits;
	}

	public void setProdHits(int prodHits) {
		this.prodHits = prodHits;
	}

	public SCategoryDTO getCategory() {
		return category;
	}

	public void setCategory(SCategoryDTO category) {
		this.category = category;
	}

	@Override
	public String toString() {
		return "productDTO [prodNo=" + prodNo + ", prodName=" + prodName + ", prodPrice=" + prodPrice + ", prodDetails="
				+ prodDetails + ", prodUploadDate=" + prodUploadDate + ", prodTerminateDate=" + prodTerminateDate
				+ ", prodDiscountRate=" + prodDiscountRate + ", prodDiscountPeriod=" + prodDiscountPeriod
				+ ", prodManufacturer=" + prodManufacturer + ", stockQuantity=" + stockQuantity + ", prodDisplayChk="
				+ prodDisplayChk + ", prodCtgNo=" + prodCtgNo + ", corpNo=" + corpNo + ", prodHits=" + prodHits
				+ ", category=" + category + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}
	

	
	
	
	
	

}
