package com.finalproj.missingitnow.product.model.dto;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

public class OrderDTO implements Serializable {
	
	private static final long serialVersionUID = 7302545684837424818L;
	
	private String orderNo;
	private String corpNo;
	private String prodNo;
	private String userNo;
	private int orderPrice;
	private String dealingStatus;
	private String orderStatus;
	private int orderOuantity;
	private java.util.Date orderDate;
	
	public OrderDTO() {}

	public OrderDTO(String orderNo, String corpNo, String prodNo, String userNo, int orderPrice, String dealingStatus,
			String orderStatus, int orderOuantity, java.util.Date orderDate) {
		super();
		this.orderNo = orderNo;
		this.corpNo = corpNo;
		this.prodNo = prodNo;
		this.userNo = userNo;
		this.orderPrice = orderPrice;
		this.dealingStatus = dealingStatus;
		this.orderStatus = orderStatus;
		this.orderOuantity = orderOuantity;
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

	public int getOrderOuantity() {
		return orderOuantity;
	}

	public void setOrderOuantity(int orderOuantity) {
		this.orderOuantity = orderOuantity;
	}

	public java.util.Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(java.util.Date orderDate) {
		this.orderDate = orderDate;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "OrderDTO [orderNo=" + orderNo + ", corpNo=" + corpNo + ", prodNo=" + prodNo + ", userNo=" + userNo
				+ ", orderPrice=" + orderPrice + ", dealingStatus=" + dealingStatus + ", orderStatus=" + orderStatus
				+ ", orderOuantity=" + orderOuantity + ", orderDate=" + orderDate + "]";
	}

	
	
}
