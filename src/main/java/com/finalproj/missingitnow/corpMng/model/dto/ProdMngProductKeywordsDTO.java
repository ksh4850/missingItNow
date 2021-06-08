package com.finalproj.missingitnow.corpMng.model.dto;

import java.io.Serializable;

public class ProdMngProductKeywordsDTO implements Serializable{
	
	private static final long serialVersionUID = 6511493087286739127L;
	
	private String keywordsNo;
	private String keywordsSet;
	private String prodNo;
	private ProdMngProductDTO prodMngProduct;
	
	public ProdMngProductKeywordsDTO() {
	}

	public ProdMngProductKeywordsDTO(String keywordsNo, String keywordsSet, String prodNo,
			ProdMngProductDTO prodMngProduct) {
		this.keywordsNo = keywordsNo;
		this.keywordsSet = keywordsSet;
		this.prodNo = prodNo;
		this.prodMngProduct = prodMngProduct;
	}

	public String getKeywordsNo() {
		return keywordsNo;
	}

	public void setKeywordsNo(String keywordsNo) {
		this.keywordsNo = keywordsNo;
	}

	public String getKeywordsSet() {
		return keywordsSet;
	}

	public void setKeywordsSet(String keywordsSet) {
		this.keywordsSet = keywordsSet;
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

	@Override
	public String toString() {
		return "ProdMngProductKeywordsDTO [keywordsNo=" + keywordsNo + ", keywordsSet=" + keywordsSet + ", prodNo="
				+ prodNo + ", prodMngProduct=" + prodMngProduct + "]";
	}
	
	
}
