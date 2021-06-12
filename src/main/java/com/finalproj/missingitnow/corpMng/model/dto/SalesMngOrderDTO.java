package com.finalproj.missingitnow.corpMng.model.dto;

import java.io.Serializable;
import java.sql.Date;

public class SalesMngOrderDTO implements Serializable {
	
	private static final long serialVersionUID = -1605102319888275582L;
	
	private String orderNo;
	private String corpNo;
	private CorpUserDTO corpUser;
	private String prodNo;
	private ProdMngProductDTO prodMngProduct;
	private String userNo;
	private UserDTO user;
	private int orderPrice;
	private String dealingStatus;
	private String orderStatus;
	private int orderQuantity;
	private Date orderDate;
	private Date startDate;
	private Date endDate;
	private int waitCount;
	private int paidCount;
	private int preparingCount;
	private int deliveringCount;
	private int deliveredCount;
	
	public SalesMngOrderDTO() {
	}

	public SalesMngOrderDTO(String orderNo, String corpNo, CorpUserDTO corpUser, String prodNo,
			ProdMngProductDTO prodMngProduct, String userNo, UserDTO user, int orderPrice, String dealingStatus,
			String orderStatus, int orderQuantity, Date orderDate, Date startDate, Date endDate, int waitCount,
			int paidCount, int preparingCount, int deliveringCount, int deliveredCount) {
		this.orderNo = orderNo;
		this.corpNo = corpNo;
		this.corpUser = corpUser;
		this.prodNo = prodNo;
		this.prodMngProduct = prodMngProduct;
		this.userNo = userNo;
		this.user = user;
		this.orderPrice = orderPrice;
		this.dealingStatus = dealingStatus;
		this.orderStatus = orderStatus;
		this.orderQuantity = orderQuantity;
		this.orderDate = orderDate;
		this.startDate = startDate;
		this.endDate = endDate;
		this.waitCount = waitCount;
		this.paidCount = paidCount;
		this.preparingCount = preparingCount;
		this.deliveringCount = deliveringCount;
		this.deliveredCount = deliveredCount;
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

	public CorpUserDTO getCorpUser() {
		return corpUser;
	}

	public void setCorpUser(CorpUserDTO corpUser) {
		this.corpUser = corpUser;
	}

	public String getProdNo() {
		return prodNo;
	}

	public void setProdNo(String prodNo) {
		this.prodNo = prodNo;
	}

	public ProdMngProductDTO getProdMngProduct() {
		return prodMngProduct;
	}

	public void setProdMngProduct(ProdMngProductDTO prodMngProduct) {
		this.prodMngProduct = prodMngProduct;
	}

	public String getUserNo() {
		return userNo;
	}

	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}

	public UserDTO getUser() {
		return user;
	}

	public void setUser(UserDTO user) {
		this.user = user;
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

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public int getWaitCount() {
		return waitCount;
	}

	public void setWaitCount(int waitCount) {
		this.waitCount = waitCount;
	}

	public int getPaidCount() {
		return paidCount;
	}

	public void setPaidCount(int paidCount) {
		this.paidCount = paidCount;
	}

	public int getPreparingCount() {
		return preparingCount;
	}

	public void setPreparingCount(int preparingCount) {
		this.preparingCount = preparingCount;
	}

	public int getDeliveringCount() {
		return deliveringCount;
	}

	public void setDeliveringCount(int deliveringCount) {
		this.deliveringCount = deliveringCount;
	}

	public int getDeliveredCount() {
		return deliveredCount;
	}

	public void setDeliveredCount(int deliveredCount) {
		this.deliveredCount = deliveredCount;
	}

	@Override
	public String toString() {
		return "SalesMngOrderDTO [orderNo=" + orderNo + ", corpNo=" + corpNo + ", corpUser=" + corpUser + ", prodNo="
				+ prodNo + ", prodMngProduct=" + prodMngProduct + ", userNo=" + userNo + ", user=" + user
				+ ", orderPrice=" + orderPrice + ", dealingStatus=" + dealingStatus + ", orderStatus=" + orderStatus
				+ ", orderQuantity=" + orderQuantity + ", orderDate=" + orderDate + ", startDate=" + startDate
				+ ", endDate=" + endDate + ", waitCount=" + waitCount + ", paidCount=" + paidCount + ", preparingCount="
				+ preparingCount + ", deliveringCount=" + deliveringCount + ", deliveredCount=" + deliveredCount + "]";
	}


}
