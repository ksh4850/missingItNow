package com.finalproj.missingitnow.admin.membermanage.model.dto;

import java.io.Serializable;
import java.sql.Date;

public class OrderDTO implements Serializable{

	private static final long serialVersionUID = -9066845215999405482L;
	
	private String no;
	private int price;
	private String dealingStatus;
	private String status;
	private int quantity;
	private java.sql.Date date;
	
	private CorpUserDTO corpUser;
	private ProdMngProductDTO product;
	private UserDTO user;
	
	public OrderDTO() {}
	public OrderDTO(String no, int price, String dealingStatus, String status, int quantity, Date date,
			CorpUserDTO corpUser, ProdMngProductDTO product, UserDTO user) {
		this.no = no;
		this.price = price;
		this.dealingStatus = dealingStatus;
		this.status = status;
		this.quantity = quantity;
		this.date = date;
		this.corpUser = corpUser;
		this.product = product;
		this.user = user;
	}
	
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getDealingStatus() {
		return dealingStatus;
	}
	public void setDealingStatus(String dealingStatus) {
		this.dealingStatus = dealingStatus;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public java.sql.Date getDate() {
		return date;
	}
	public void setDate(java.sql.Date date) {
		this.date = date;
	}
	public CorpUserDTO getCorpUser() {
		return corpUser;
	}
	public void setCorpUser(CorpUserDTO corpUser) {
		this.corpUser = corpUser;
	}
	public ProdMngProductDTO getProduct() {
		return product;
	}
	public void setProduct(ProdMngProductDTO product) {
		this.product = product;
	}
	public UserDTO getUser() {
		return user;
	}
	public void setUser(UserDTO user) {
		this.user = user;
	}
	
	@Override
	public String toString() {
		return "OrderDTO [no=" + no + ", price=" + price + ", dealingStatus=" + dealingStatus + ", status=" + status
				+ ", quantity=" + quantity + ", date=" + date + ", corpUser=" + corpUser + ", product=" + product
				+ ", user=" + user + "]";
	}
	
}
