package com.finalproj.missingitnow.admin.membermanage.model.dto;

import java.io.Serializable;

public class ProdMngProductImgDTO implements Serializable{
	
	private static final long serialVersionUID = -871140596245708101L;
	private String prodImgNo;
	private String prodNo;
	private String prodImgOriginName;
	private String prodImgRename;
	private String prodImgThnName;
	private String prodImgPath;
	
	public ProdMngProductImgDTO() {
	}

	public ProdMngProductImgDTO(String prodImgNo, String prodNo, String prodImgOriginName, String prodImgRename,
			String prodImgThnName, String prodImgPath) {
		this.prodImgNo = prodImgNo;
		this.prodNo = prodNo;
		this.prodImgOriginName = prodImgOriginName;
		this.prodImgRename = prodImgRename;
		this.prodImgThnName = prodImgThnName;
		this.prodImgPath = prodImgPath;
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

	@Override
	public String toString() {
		return "[prodImgNo=" + prodImgNo + ", prodNo=" + prodNo + ", prodImgOriginName="
				+ prodImgOriginName + ", prodImgRename=" + prodImgRename + ", prodImgThnName=" + prodImgThnName
				+ ", prodImgPath=" + prodImgPath + "]";
	}
	
	
}
