package com.finalproj.missingitnow.corpMng.model.dto;

import java.io.Serializable;

public class ProdMngCategoryDTO implements Serializable {
	
	private static final long serialVersionUID = -7013011427808846047L;
	private String prodCtgNo;
	private String prodCtgName;
	
	public ProdMngCategoryDTO() {
	}

	public ProdMngCategoryDTO(String prodCtgNo, String prodCtgName) {
		this.prodCtgNo = prodCtgNo;
		this.prodCtgName = prodCtgName;
	}

	public String getProdCtgNo() {
		return prodCtgNo;
	}

	public void setProdCtgNo(String prodCtgNo) {
		this.prodCtgNo = prodCtgNo;
	}

	public String getProdCtgName() {
		return prodCtgName;
	}

	public void setProdCtgName(String prodCtgName) {
		this.prodCtgName = prodCtgName;
	}

	@Override
	public String toString() {
		return "[prodCtgNo=" + prodCtgNo + ", prodCtgName=" + prodCtgName + "]";
	}
	
	
	
}
