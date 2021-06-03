package com.finalproj.missingitnow.system.model.dto;

import com.finalproj.missingitnow.common.page.PageInfoDTO;

public class CorpPageDTO {
	
	private String corpLv;
	private String corpCondition;
	private int currentPage;
	private String corpSearchText;
	private PageInfoDTO pageInfo;
	
	
	public CorpPageDTO() {
		
	}


	public CorpPageDTO(String corpLv, String corpCondition, int currentPage, String corpSearchText,
			PageInfoDTO pageInfo) {
		super();
		this.corpLv = corpLv;
		this.corpCondition = corpCondition;
		this.currentPage = currentPage;
		this.corpSearchText = corpSearchText;
		this.pageInfo = pageInfo;
	}


	public String getCorpLv() {
		return corpLv;
	}


	public void setCorpLv(String corpLv) {
		this.corpLv = corpLv;
	}


	public String getCorpCondition() {
		return corpCondition;
	}


	public void setCorpCondition(String corpCondition) {
		this.corpCondition = corpCondition;
	}


	public int getCurrentPage() {
		return currentPage;
	}


	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}


	public String getCorpSearchText() {
		return corpSearchText;
	}


	public void setCorpSearchText(String corpSearchText) {
		this.corpSearchText = corpSearchText;
	}


	public PageInfoDTO getPageInfo() {
		return pageInfo;
	}


	public void setPageInfo(PageInfoDTO pageInfo) {
		this.pageInfo = pageInfo;
	}


	@Override
	public String toString() {
		return "CorpPageDTO [corpLv=" + corpLv + ", corpCondition=" + corpCondition + ", currentPage=" + currentPage
				+ ", corpSearchText=" + corpSearchText + ", pageInfo=" + pageInfo + "]";
	}



	
	
	

}
