package com.finalproj.missingitnow.system.model.dto;

import com.finalproj.missingitnow.common.page.PageInfoDTO;

public class CorpSellPageDTO {
	
	private String startDate;
	private String  endDate;
	private int currentPage;
	private String condition;
	private String corpSellText;
	private PageInfoDTO pageInfo;
	
	public CorpSellPageDTO() {
		
	}
	
	public CorpSellPageDTO(String startDate, String endDate, int currentPage, String condition, String corpSellText,
			PageInfoDTO pageInfo) {
		super();
		this.startDate = startDate;
		this.endDate = endDate;
		this.currentPage = currentPage;
		this.condition = condition;
		this.corpSellText = corpSellText;
		this.pageInfo = pageInfo;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}
	public String getCorpSellText() {
		return corpSellText;
	}
	public void setCorpSellText(String corpSellText) {
		this.corpSellText = corpSellText;
	}
	public PageInfoDTO getPageInfo() {
		return pageInfo;
	}
	public void setPageInfo(PageInfoDTO pageInfo) {
		this.pageInfo = pageInfo;
	}
	@Override
	public String toString() {
		return "CorpSellPageDTO [startDate=" + startDate + ", endDate=" + endDate + ", currentPage=" + currentPage
				+ ", condition=" + condition + ", corpSellText=" + corpSellText + ", pageInfo=" + pageInfo + "]";
	} 
	
	

}
