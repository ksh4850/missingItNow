package com.finalproj.missingitnow.product.model.dto;

import java.io.Serializable;

public class OrderPaymentDTO implements Serializable {
	
	private static final long serialVersionUID = 6131758973720243541L;

	private String orderNo;
	private String paymentNo;
	
	public OrderPaymentDTO() {}

	public OrderPaymentDTO(String orderNo, String paymentNo) {
		super();
		this.orderNo = orderNo;
		this.paymentNo = paymentNo;
	}

	public String getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}

	public String getPaymentNo() {
		return paymentNo;
	}

	public void setPaymentNo(String paymentNo) {
		this.paymentNo = paymentNo;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "OrderPayment [orderNo=" + orderNo + ", paymentNo=" + paymentNo + "]";
	}
	
	
}
