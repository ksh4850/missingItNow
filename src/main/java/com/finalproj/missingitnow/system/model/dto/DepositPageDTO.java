package com.finalproj.missingitnow.system.model.dto;


import com.finalproj.missingitnow.common.page.PageInfoDTO;

public class DepositPageDTO {
	
	private String startDate;
	private String  endDate;
	private int currentPage;
	private String depositSort;
	private String depositCondition;
	private String depositSearchText;
	private PageInfoDTO pageInfo;
	
	public DepositPageDTO() {
		
	}

	public DepositPageDTO(String startDate, String endDate, int currentPage, String depositSort,
			String depositCondition, String depositSearchText, PageInfoDTO pageInfo) {
		super();
		this.startDate = startDate;
		this.endDate = endDate;
		this.currentPage = currentPage;
		this.depositSort = depositSort;
		this.depositCondition = depositCondition;
		this.depositSearchText = depositSearchText;
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

	public String getDepositSort() {
		return depositSort;
	}

	public void setDepositSort(String depositSort) {
		this.depositSort = depositSort;
	}

	public String getDepositCondition() {
		return depositCondition;
	}

	public void setDepositCondition(String depositCondition) {
		this.depositCondition = depositCondition;
	}

	public String getDepositSearchText() {
		return depositSearchText;
	}

	public void setDepositSearchText(String depositSearchText) {
		this.depositSearchText = depositSearchText;
	}

	public PageInfoDTO getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(PageInfoDTO pageInfo) {
		this.pageInfo = pageInfo;
	}

	@Override
	public String toString() {
		return "DepositPageDTO [startDate=" + startDate + ", endDate=" + endDate + ", currentPage=" + currentPage
				+ ", depositSort=" + depositSort + ", depositCondition=" + depositCondition + ", depositSearchText="
				+ depositSearchText + ", pageInfo=" + pageInfo + "]";
	}

	
	


}
