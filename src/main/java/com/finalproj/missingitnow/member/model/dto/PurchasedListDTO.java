package com.finalproj.missingitnow.member.model.dto;

import java.sql.Date;

import com.finalproj.missingitnow.product.model.dto.ProductDTO;

public class PurchasedListDTO {
	
	private String orderNo;
	private String purchaseNo;
	private String userNo;
	private java.sql.Date purchasedDate;
	private String purchasedStatus;
	private String prodNo;
	private int purchasedAmount;
	private String paymentChk;							 
	private PrivateMemberDTO privateMemberDTO;
	private ProductDTO productDTO;
	private MyPageOrderDTO orderDTO;
	
	public PurchasedListDTO() {
		super();
	}

	public PurchasedListDTO(String orderNo, String purchaseNo, String userNo, Date purchasedDate,
			String purchasedStatus, String prodNo, int purchasedAmount, String paymentChk,
			PrivateMemberDTO privateMemberDTO, ProductDTO productDTO, MyPageOrderDTO orderDTO) {
		super();
		this.orderNo = orderNo;
		this.purchaseNo = purchaseNo;
		this.userNo = userNo;
		this.purchasedDate = purchasedDate;
		this.purchasedStatus = purchasedStatus;
		this.prodNo = prodNo;
		this.purchasedAmount = purchasedAmount;
		this.paymentChk = paymentChk;
		this.privateMemberDTO = privateMemberDTO;
		this.productDTO = productDTO;
		this.orderDTO = orderDTO;
	}

	public String getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}

	public String getPurchaseNo() {
		return purchaseNo;
	}

	public void setPurchaseNo(String purchaseNo) {
		this.purchaseNo = purchaseNo;
	}

	public String getUserNo() {
		return userNo;
	}

	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}

	public java.sql.Date getPurchasedDate() {
		return purchasedDate;
	}

	public void setPurchasedDate(java.sql.Date purchasedDate) {
		this.purchasedDate = purchasedDate;
	}

	public String getPurchasedStatus() {
		return purchasedStatus;
	}

	public void setPurchasedStatus(String purchasedStatus) {
		this.purchasedStatus = purchasedStatus;
	}

	public String getProdNo() {
		return prodNo;
	}

	public void setProdNo(String prodNo) {
		this.prodNo = prodNo;
	}

	public int getPurchasedAmount() {
		return purchasedAmount;
	}

	public void setPurchasedAmount(int purchasedAmount) {
		this.purchasedAmount = purchasedAmount;
	}

	public String getPaymentChk() {
		return paymentChk;
	}

	public void setPaymentChk(String paymentChk) {
		this.paymentChk = paymentChk;
	}

	public PrivateMemberDTO getPrivateMemberDTO() {
		return privateMemberDTO;
	}

	public void setPrivateMemberDTO(PrivateMemberDTO privateMemberDTO) {
		this.privateMemberDTO = privateMemberDTO;
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
		return "PurchasedListDTO [orderNo=" + orderNo + ", purchaseNo=" + purchaseNo + ", userNo=" + userNo
				+ ", purchasedDate=" + purchasedDate + ", purchasedStatus=" + purchasedStatus + ", prodNo=" + prodNo
				+ ", purchasedAmount=" + purchasedAmount + ", paymentChk=" + paymentChk + ", privateMemberDTO="
				+ privateMemberDTO + ", productDTO=" + productDTO + ", orderDTO=" + orderDTO + "]";
	}




	
}
