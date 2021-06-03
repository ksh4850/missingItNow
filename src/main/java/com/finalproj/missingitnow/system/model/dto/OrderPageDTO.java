package com.finalproj.missingitnow.system.model.dto;

import com.finalproj.missingitnow.common.page.PageInfoDTO;

public class OrderPageDTO {
	
	private String startDate;
	private String endDate;
	private String dealingStatus;
	private String category;
	private String condition;
	private String orderInfoText;
	private int currentPage;
	private PageInfoDTO pageInfo;
	
	public OrderPageDTO() {
		
	}

	public OrderPageDTO(String startDate, String endDate, String dealingStatus, String category, String condition,
			String orderInfoText, int currentPage, PageInfoDTO pageInfo) {
		super();
		this.startDate = startDate;
		this.endDate = endDate;
		this.dealingStatus = dealingStatus;
		this.category = category;
		this.condition = condition;
		this.orderInfoText = orderInfoText;
		this.currentPage = currentPage;
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

	public String getDealingStatus() {
		return dealingStatus;
	}

	public void setDealingStatus(String dealingStatus) {
		this.dealingStatus = dealingStatus;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getCondition() {
		return condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}

	public String getOrderInfoText() {
		return orderInfoText;
	}

	public void setOrderInfoText(String orderInfoText) {
		this.orderInfoText = orderInfoText;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public PageInfoDTO getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(PageInfoDTO pageInfo) {
		this.pageInfo = pageInfo;
	}

	@Override
	public String toString() {
		return "OrderPageDTO [startDate=" + startDate + ", endDate=" + endDate + ", dealingStatus=" + dealingStatus
				+ ", category=" + category + ", condition=" + condition + ", orderInfoText=" + orderInfoText
				+ ", currentPage=" + currentPage + ", pageInfo=" + pageInfo + "]";
	}
	
	
	
	
	
	
	
	

}
