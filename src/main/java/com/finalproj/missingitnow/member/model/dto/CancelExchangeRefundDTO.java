package com.finalproj.missingitnow.member.model.dto;

import java.sql.Date;

import com.finalproj.missingitnow.product.model.dto.ProductDTO;

public class CancelExchangeRefundDTO {
	
	private String exchangeNo;
	private String userNo;
	private String deliveryNo;
	private java.sql.Date exchangeDate;
	private String exchangeChk;
	private String returnNo;
	private java.sql.Date returnDate;
	private String returnChk;
	private String refundChk;
	private PrivateMemberDTO privateMemberDTO;
	private ProductDTO productDTO;
	private MyPageOrderDTO orderDTO;
	
	
	public CancelExchangeRefundDTO() {
		super();
	}


	public CancelExchangeRefundDTO(String exchangeNo, String userNo, String deliveryNo, Date exchangeDate,
			String exchangeChk, String returnNo, Date returnDate, String returnChk, String refundChk,
			PrivateMemberDTO privateMemberDTO, ProductDTO productDTO, MyPageOrderDTO orderDTO) {
		super();
		this.exchangeNo = exchangeNo;
		this.userNo = userNo;
		this.deliveryNo = deliveryNo;
		this.exchangeDate = exchangeDate;
		this.exchangeChk = exchangeChk;
		this.returnNo = returnNo;
		this.returnDate = returnDate;
		this.returnChk = returnChk;
		this.refundChk = refundChk;
		this.privateMemberDTO = privateMemberDTO;
		this.productDTO = productDTO;
		this.orderDTO = orderDTO;
	}


	public String getExchangeNo() {
		return exchangeNo;
	}


	public void setExchangeNo(String exchangeNo) {
		this.exchangeNo = exchangeNo;
	}


	public String getUserNo() {
		return userNo;
	}


	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}


	public String getDeliveryNo() {
		return deliveryNo;
	}


	public void setDeliveryNo(String deliveryNo) {
		this.deliveryNo = deliveryNo;
	}


	public java.sql.Date getExchangeDate() {
		return exchangeDate;
	}


	public void setExchangeDate(java.sql.Date exchangeDate) {
		this.exchangeDate = exchangeDate;
	}


	public String getExchangeChk() {
		return exchangeChk;
	}


	public void setExchangeChk(String exchangeChk) {
		this.exchangeChk = exchangeChk;
	}


	public String getReturnNo() {
		return returnNo;
	}


	public void setReturnNo(String returnNo) {
		this.returnNo = returnNo;
	}


	public java.sql.Date getReturnDate() {
		return returnDate;
	}


	public void setReturnDate(java.sql.Date returnDate) {
		this.returnDate = returnDate;
	}


	public String getReturnChk() {
		return returnChk;
	}


	public void setReturnChk(String returnChk) {
		this.returnChk = returnChk;
	}


	public String getRefundChk() {
		return refundChk;
	}


	public void setRefundChk(String refundChk) {
		this.refundChk = refundChk;
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
		return "CancelExchangeRefundDTO [exchangeNo=" + exchangeNo + ", userNo=" + userNo + ", deliveryNo=" + deliveryNo
				+ ", exchangeDate=" + exchangeDate + ", exchangeChk=" + exchangeChk + ", returnNo=" + returnNo
				+ ", returnDate=" + returnDate + ", returnChk=" + returnChk + ", refundChk=" + refundChk
				+ ", privateMemberDTO=" + privateMemberDTO + ", productDTO=" + productDTO + ", orderDTO=" + orderDTO
				+ "]";
	}





	
}
