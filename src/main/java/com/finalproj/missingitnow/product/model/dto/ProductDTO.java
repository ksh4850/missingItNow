package com.finalproj.missingitnow.product.model.dto;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

public class ProductDTO implements Serializable {
	
	private static final long serialVersionUID = 4332985540769018418L;

	private String prodNo;
	private String prodName;
	private int prodPrice;
	private String prodDetails;
	private Date prodUploadDate;
	private Date prodTerminateDate;
	private int prodDiscountRate;
	private Date prodDiscountPeriod;
	private String prodManufacturer;
	private String stockQuantity;
	private String prodDisplayChk;
	private String prodCtgNo;
	private String corpNo;
	private int prodHits;
	private String prodImgRename;
	private String prodImgPath;
	private String corpName;
	private starsScoreDTO starsScore;
	
	public ProductDTO() {}

	public ProductDTO(String prodNo, String prodName, int prodPrice, String prodDetails, Date prodUploadDate,
			Date prodTerminateDate, int prodDiscountRate, Date prodDiscountPeriod, String prodManufacturer,
			String stockQuantity, String prodDisplayChk, String prodCtgNo, String corpNo, int prodHits,
			String prodImgRename, String prodImgPath, String corpName) {
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
		this.prodImgRename = prodImgRename;
		this.prodImgPath = prodImgPath;
		this.corpName = corpName;
	}
	
	

	public ProductDTO(String prodNo, String prodName, int prodPrice, String prodDetails, Date prodUploadDate,
			Date prodTerminateDate, int prodDiscountRate, Date prodDiscountPeriod, String prodManufacturer,
			String stockQuantity, String prodDisplayChk, String prodCtgNo, String corpNo, int prodHits,
			String prodImgRename, String prodImgPath, String corpName, starsScoreDTO starsScore) {
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
		this.prodImgRename = prodImgRename;
		this.prodImgPath = prodImgPath;
		this.corpName = corpName;
		this.starsScore = starsScore;
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

	public Date getProdUploadDate() {
		return prodUploadDate;
	}

	public void setProdUploadDate(Date prodUploadDate) {
		this.prodUploadDate = prodUploadDate;
	}

	public Date getProdTerminateDate() {
		return prodTerminateDate;
	}

	public void setProdTerminateDate(Date prodTerminateDate) {
		this.prodTerminateDate = prodTerminateDate;
	}

	public int getProdDiscountRate() {
		return prodDiscountRate;
	}

	public void setProdDiscountRate(int prodDiscountRate) {
		this.prodDiscountRate = prodDiscountRate;
	}

	public Date getProdDiscountPeriod() {
		return prodDiscountPeriod;
	}

	public void setProdDiscountPeriod(Date prodDiscountPeriod) {
		this.prodDiscountPeriod = prodDiscountPeriod;
	}

	public String getProdManufacturer() {
		return prodManufacturer;
	}

	public void setProdManufacturer(String prodManufacturer) {
		this.prodManufacturer = prodManufacturer;
	}

	public String getStockQuantity() {
		return stockQuantity;
	}

	public void setStockQuantity(String stockQuantity) {
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

	public String getProdImgRename() {
		return prodImgRename;
	}

	public void setProdImgRename(String prodImgRename) {
		this.prodImgRename = prodImgRename;
	}

	public String getProdImgPath() {
		return prodImgPath;
	}

	public void setProdImgPath(String prodImgPath) {
		this.prodImgPath = prodImgPath;
	}

	public String getCorpName() {
		return corpName;
	}

	public void setCorpName(String corpName) {
		this.corpName = corpName;
	}

	public starsScoreDTO getStarsScore() {
		return starsScore;
	}

	public void setStarsScore(starsScoreDTO starsScore) {
		this.starsScore = starsScore;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "ProductDTO [prodNo=" + prodNo + ", prodName=" + prodName + ", prodPrice=" + prodPrice + ", prodDetails="
				+ prodDetails + ", prodUploadDate=" + prodUploadDate + ", prodTerminateDate=" + prodTerminateDate
				+ ", prodDiscountRate=" + prodDiscountRate + ", prodDiscountPeriod=" + prodDiscountPeriod
				+ ", prodManufacturer=" + prodManufacturer + ", stockQuantity=" + stockQuantity + ", prodDisplayChk="
				+ prodDisplayChk + ", prodCtgNo=" + prodCtgNo + ", corpNo=" + corpNo + ", prodHits=" + prodHits
				+ ", prodImgRename=" + prodImgRename + ", prodImgPath=" + prodImgPath + ", corpName=" + corpName
				+ ", starsScore=" + starsScore + "]";
	}

	

	
	
	
}
