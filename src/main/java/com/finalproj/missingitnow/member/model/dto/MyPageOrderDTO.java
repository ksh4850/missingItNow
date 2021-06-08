package com.finalproj.missingitnow.member.model.dto;

import java.sql.Date;

public class MyPageOrderDTO {
	
	private String orderNo;
	private String corpNo;
	private String prodNo;
	private String userNo;
	private int orderPrice;
	private String dealingStatus;
	private String orderStatus;
	private int orderQuantity;
	private java.sql.Date orderDate;

	
	
	public MyPageOrderDTO() {
		super();
	}



	public MyPageOrderDTO(String orderNo, String corpNo, String prodNo, String userNo, int orderPrice,
			String dealingStatus, String orderStatus, int orderQuantity, Date orderDate) {
		super();
		this.orderNo = orderNo;
		this.corpNo = corpNo;
		this.prodNo = prodNo;
		this.userNo = userNo;
		this.orderPrice = orderPrice;
		this.dealingStatus = dealingStatus;
		this.orderStatus = orderStatus;
		this.orderQuantity = orderQuantity;
		this.orderDate = orderDate;
	}



	public String getOrderNo() {
		return orderNo;
	}



	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}



	public String getCorpNo() {
		return corpNo;
	}



	public void setCorpNo(String corpNo) {
		this.corpNo = corpNo;
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



	public int getOrderPrice() {
		return orderPrice;
	}



	public void setOrderPrice(int orderPrice) {
		this.orderPrice = orderPrice;
	}



	public String getDealingStatus() {
		return dealingStatus;
	}



	public void setDealingStatus(String dealingStatus) {
		this.dealingStatus = dealingStatus;
	}



	public String getOrderStatus() {
		return orderStatus;
	}



	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}



	public int getOrderQuantity() {
		return orderQuantity;
	}



	public void setOrderQuantity(int orderQuantity) {
		this.orderQuantity = orderQuantity;
	}



	public java.sql.Date getOrderDate() {
		return orderDate;
	}



	public void setOrderDate(java.sql.Date orderDate) {
		this.orderDate = orderDate;
	}



	@Override
	public String toString() {
		return "MyPageOrderDTO [orderNo=" + orderNo + ", corpNo=" + corpNo + ", prodNo=" + prodNo + ", userNo=" + userNo
				+ ", orderPrice=" + orderPrice + ", dealingStatus=" + dealingStatus + ", orderStatus=" + orderStatus
				+ ", orderQuantity=" + orderQuantity + ", orderDate=" + orderDate + "]";
	}
	
	
	
	
	
}
