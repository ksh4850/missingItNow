package com.finalproj.missingitnow.product.model.dto;

import java.io.Serializable;

public class ProductImgDTO implements Serializable{
	
	private static final long serialVersionUID = -871140596245708101L;
	private String prodImgNo;
	private String prodNo;
	private String prodImgOriginName;
	private String prodImgRename;
	private String prodImgThnName;
	private String prodImgPath;
	private int prodImgNumber;
	
	public ProductImgDTO() {}

	public ProductImgDTO(String prodImgNo, String prodNo, String prodImgOriginName, String prodImgRename,
			String prodImgThnName, String prodImgPath, int prodImgNumber) {
		super();
		this.prodImgNo = prodImgNo;
		this.prodNo = prodNo;
		this.prodImgOriginName = prodImgOriginName;
		this.prodImgRename = prodImgRename;
		this.prodImgThnName = prodImgThnName;
		this.prodImgPath = prodImgPath;
		this.prodImgNumber = prodImgNumber;
	}

	public String getProdImgNo() {
		return prodImgNo;
	}

	public void setProdImgNo(String prodImgNo) {
		this.prodImgNo = prodImgNo;
	}

	public String getProdNo() {
		return prodNo;
	}

	public void setProdNo(String prodNo) {
		this.prodNo = prodNo;
	}

	public String getProdImgOriginName() {
		return prodImgOriginName;
	}

	public void setProdImgOriginName(String prodImgOriginName) {
		this.prodImgOriginName = prodImgOriginName;
	}

	public String getProdImgRename() {
		return prodImgRename;
	}

	public void setProdImgRename(String prodImgRename) {
		this.prodImgRename = prodImgRename;
	}

	public String getProdImgThnName() {
		return prodImgThnName;
	}

	public void setProdImgThnName(String prodImgThnName) {
		this.prodImgThnName = prodImgThnName;
	}

	public String getProdImgPath() {
		return prodImgPath;
	}

	public void setProdImgPath(String prodImgPath) {
		this.prodImgPath = prodImgPath;
	}

	public int getProdImgNumber() {
		return prodImgNumber;
	}

	public void setProdImgNumber(int prodImgNumber) {
		this.prodImgNumber = prodImgNumber;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "ProductImgDTO [prodImgNo=" + prodImgNo + ", prodNo=" + prodNo + ", prodImgOriginName="
				+ prodImgOriginName + ", prodImgRename=" + prodImgRename + ", prodImgThnName=" + prodImgThnName
				+ ", prodImgPath=" + prodImgPath + ", prodImgNumber=" + prodImgNumber + "]";
	}

	
	
}