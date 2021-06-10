package com.finalproj.missingitnow.corpMng.model.dto;

import java.io.Serializable;
import java.sql.Date;

public class ProdCmtListDTO implements Serializable {
	
	private static final long serialVersionUID = 9136762521943960680L;
	
	private String prodComtNo;
	private String prodNo;
	private String userNo;
	private String prodComtDetails;
	private Date prodComtDate;
	private String prodComtDisplayChk;
	private String prodComtReplyChk;
	private String prodComtReply;
	private ProdMngProductDTO prodMngProduct;
	private UserDTO user;
	
	public ProdCmtListDTO() {
	}

	public ProdCmtListDTO(String prodComtNo, String prodNo, String userNo, String prodComtDetails, Date prodComtDate,
			String prodComtDisplayChk, String prodComtReplyChk, String prodComtReply, ProdMngProductDTO prodMngProduct,
			UserDTO user) {
		this.prodComtNo = prodComtNo;
		this.prodNo = prodNo;
		this.userNo = userNo;
		this.prodComtDetails = prodComtDetails;
		this.prodComtDate = prodComtDate;
		this.prodComtDisplayChk = prodComtDisplayChk;
		this.prodComtReplyChk = prodComtReplyChk;
		this.prodComtReply = prodComtReply;
		this.prodMngProduct = prodMngProduct;
		this.user = user;
	}

	public String getProdComtNo() {
		return prodComtNo;
	}

	public void setProdComtNo(String prodComtNo) {
		this.prodComtNo = prodComtNo;
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

	public String getProdComtDetails() {
		return prodComtDetails;
	}

	public void setProdComtDetails(String prodComtDetails) {
		this.prodComtDetails = prodComtDetails;
	}

	public Date getProdComtDate() {
		return prodComtDate;
	}

	public void setProdComtDate(Date prodComtDate) {
		this.prodComtDate = prodComtDate;
	}

	public String getProdComtDisplayChk() {
		return prodComtDisplayChk;
	}

	public void setProdComtDisplayChk(String prodComtDisplayChk) {
		this.prodComtDisplayChk = prodComtDisplayChk;
	}

	public String getProdComtReplyChk() {
		return prodComtReplyChk;
	}

	public void setProdComtReplyChk(String prodComtReplyChk) {
		this.prodComtReplyChk = prodComtReplyChk;
	}

	public String getProdComtReply() {
		return prodComtReply;
	}

	public void setProdComtReply(String prodComtReply) {
		this.prodComtReply = prodComtReply;
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

	@Override
	public String toString() {
		return "ProdCmtListDTO [prodComtNo=" + prodComtNo + ", prodNo=" + prodNo + ", userNo=" + userNo
				+ ", prodComtDetails=" + prodComtDetails + ", prodComtDate=" + prodComtDate + ", prodComtDisplayChk="
				+ prodComtDisplayChk + ", prodComtReplyChk=" + prodComtReplyChk + ", prodComtReply=" + prodComtReply
				+ ", prodMngProduct=" + prodMngProduct + ", user=" + user + "]";
	}

	
}
