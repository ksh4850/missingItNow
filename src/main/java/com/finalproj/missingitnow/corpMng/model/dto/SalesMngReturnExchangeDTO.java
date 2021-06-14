package com.finalproj.missingitnow.corpMng.model.dto;

import java.io.Serializable;
import java.sql.Date;

public class SalesMngReturnExchangeDTO implements Serializable {
	
	private static final long serialVersionUID = 2096411047229336776L;
	
	private String retnExchNo;
	private String userNo;
	private Date retnExchDate;
	private String retnExchChk;
	private String prodNo;
	private String prodName;
	private UserDTO user;
	private ProdMngProductDTO prodMngProduct;
	private SalesMngOrderDTO salesMngOrder;
	
	public SalesMngReturnExchangeDTO() {
	}

	public SalesMngReturnExchangeDTO(String retnExchNo, String userNo, Date retnExchDate, String retnExchChk,
			String prodNo, String prodName, UserDTO user, ProdMngProductDTO prodMngProduct,
			SalesMngOrderDTO salesMngOrder) {
		this.retnExchNo = retnExchNo;
		this.userNo = userNo;
		this.retnExchDate = retnExchDate;
		this.retnExchChk = retnExchChk;
		this.prodNo = prodNo;
		this.prodName = prodName;
		this.user = user;
		this.prodMngProduct = prodMngProduct;
		this.salesMngOrder = salesMngOrder;
	}

	public String getRetnExchNo() {
		return retnExchNo;
	}

	public void setRetnExchNo(String retnExchNo) {
		this.retnExchNo = retnExchNo;
	}

	public String getUserNo() {
		return userNo;
	}

	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}

	public Date getRetnExchDate() {
		return retnExchDate;
	}

	public void setRetnExchDate(Date retnExchDate) {
		this.retnExchDate = retnExchDate;
	}

	public String getRetnExchChk() {
		return retnExchChk;
	}

	public void setRetnExchChk(String retnExchChk) {
		this.retnExchChk = retnExchChk;
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

	public UserDTO getUser() {
		return user;
	}

	public void setUser(UserDTO user) {
		this.user = user;
	}

	public ProdMngProductDTO getProdMngProduct() {
		return prodMngProduct;
	}

	public void setProdMngProduct(ProdMngProductDTO prodMngProduct) {
		this.prodMngProduct = prodMngProduct;
	}

	public SalesMngOrderDTO getSalesMngOrder() {
		return salesMngOrder;
	}

	public void setSalesMngOrder(SalesMngOrderDTO salesMngOrder) {
		this.salesMngOrder = salesMngOrder;
	}

	@Override
	public String toString() {
		return "SalesMngReturnExchangeDTO [retnExchNo=" + retnExchNo + ", userNo=" + userNo + ", retnExchDate="
				+ retnExchDate + ", retnExchChk=" + retnExchChk + ", prodNo=" + prodNo + ", prodName=" + prodName
				+ ", user=" + user + ", prodMngProduct=" + prodMngProduct + ", salesMngOrder=" + salesMngOrder + "]";
	}
	
	
	
}
