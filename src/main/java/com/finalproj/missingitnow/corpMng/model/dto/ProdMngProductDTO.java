package com.finalproj.missingitnow.corpMng.model.dto;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

import com.finalproj.missingitnow.common.page.PageInfoDTO;

public class ProdMngProductDTO implements Serializable {
	
	private static final long serialVersionUID = -599426520171967770L;
	private String prodNo;
	private String prodName;
	private int prodPrice;
	private String prodDetails;
	private Date prodUploadDate;
	private Date prodTerminateDate;
	private int prodDiscountRate;
	private Date prodDiscountPeriod;
	private int prodDiscountedPrice; 
	private String prodManufacturer;
	private int stockQuantity;
	private String prodDisplayChk;
	private String prodCtgNo;
	private String corpNo;
	private int prodHits;
	private ProdMngCategoryDTO category;
	private List<ProdMngProductImgDTO> prodImgList;
	private List<ProdMngProductKeywordsDTO> prodKeywordsList;
	
	public ProdMngProductDTO() {
	}

	public ProdMngProductDTO(String prodNo, String prodName, int prodPrice, String prodDetails, Date prodUploadDate,
			Date prodTerminateDate, int prodDiscountRate, Date prodDiscountPeriod, int prodDiscountedPrice,
			String prodManufacturer, int stockQuantity, String prodDisplayChk, String prodCtgNo, String corpNo,
			int prodHits, ProdMngCategoryDTO category, List<ProdMngProductImgDTO> prodImgList,
			List<ProdMngProductKeywordsDTO> prodKeywordsList) {
		this.prodNo = prodNo;
		this.prodName = prodName;
		this.prodPrice = prodPrice;
		this.prodDetails = prodDetails;
		this.prodUploadDate = prodUploadDate;
		this.prodTerminateDate = prodTerminateDate;
		this.prodDiscountRate = prodDiscountRate;
		this.prodDiscountPeriod = prodDiscountPeriod;
		this.prodDiscountedPrice = prodDiscountedPrice;
		this.prodManufacturer = prodManufacturer;
		this.stockQuantity = stockQuantity;
		this.prodDisplayChk = prodDisplayChk;
		this.prodCtgNo = prodCtgNo;
		this.corpNo = corpNo;
		this.prodHits = prodHits;
		this.category = category;
		this.prodImgList = prodImgList;
		this.prodKeywordsList = prodKeywordsList;
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

	public int getProdDiscountedPrice() {
		return prodDiscountedPrice;
	}

	public void setProdDiscountedPrice(int prodDiscountedPrice) {
		this.prodDiscountedPrice = prodDiscountedPrice;
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

	public ProdMngCategoryDTO getCategory() {
		return category;
	}

	public void setCategory(ProdMngCategoryDTO category) {
		this.category = category;
	}

	public List<ProdMngProductImgDTO> getProdImgList() {
		return prodImgList;
	}

	public void setProdImgList(List<ProdMngProductImgDTO> prodImgList) {
		this.prodImgList = prodImgList;
	}

	public List<ProdMngProductKeywordsDTO> getProdKeywordsList() {
		return prodKeywordsList;
	}

	public void setProdKeywordsList(List<ProdMngProductKeywordsDTO> prodKeywordsList) {
		this.prodKeywordsList = prodKeywordsList;
	}

	@Override
	public String toString() {
		return "ProdMngProductDTO [prodNo=" + prodNo + ", prodName=" + prodName + ", prodPrice=" + prodPrice
				+ ", prodDetails=" + prodDetails + ", prodUploadDate=" + prodUploadDate + ", prodTerminateDate="
				+ prodTerminateDate + ", prodDiscountRate=" + prodDiscountRate + ", prodDiscountPeriod="
				+ prodDiscountPeriod + ", prodDiscountedPrice=" + prodDiscountedPrice + ", prodManufacturer="
				+ prodManufacturer + ", stockQuantity=" + stockQuantity + ", prodDisplayChk=" + prodDisplayChk
				+ ", prodCtgNo=" + prodCtgNo + ", corpNo=" + corpNo + ", prodHits=" + prodHits + ", category="
				+ category + ", prodImgList=" + prodImgList + ", prodKeywordsList=" + prodKeywordsList + "]";
	}

	
	
}
