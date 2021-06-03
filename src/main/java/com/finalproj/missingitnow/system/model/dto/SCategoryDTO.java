package com.finalproj.missingitnow.system.model.dto;

public class SCategoryDTO {
	
	private String prodCtgNo;
	private String prodCtgName;
	
	public SCategoryDTO() {
		
	}
	
	public SCategoryDTO(String prodCtgNo, String prodCtgName) {
		super();
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
		return "CategoryDTO [prodCtgNo=" + prodCtgNo + ", prodCtgName=" + prodCtgName + "]";
	}
	
	

}
