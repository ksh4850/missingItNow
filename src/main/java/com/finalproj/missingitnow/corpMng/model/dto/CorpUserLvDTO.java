package com.finalproj.missingitnow.corpMng.model.dto;

import java.io.Serializable;

public class CorpUserLvDTO implements Serializable {
	
	private static final long serialVersionUID = -4226693849020504579L;
	
	private String corpLvNo;
	private String corpLvName;
	
	public CorpUserLvDTO() {
	}

	public CorpUserLvDTO(String corpLvNo, String corpLvName) {
		this.corpLvNo = corpLvNo;
		this.corpLvName = corpLvName;
	}

	public String getCorpLvNo() {
		return corpLvNo;
	}

	public void setCorpLvNo(String corpLvNo) {
		this.corpLvNo = corpLvNo;
	}

	public String getCorpLvName() {
		return corpLvName;
	}

	public void setCorpLvName(String corpLvName) {
		this.corpLvName = corpLvName;
	}

	@Override
	public String toString() {
		return "CorpUserLvDTO [corpLvNo=" + corpLvNo + ", corpLvName=" + corpLvName + "]";
	}
	
	
	
}
