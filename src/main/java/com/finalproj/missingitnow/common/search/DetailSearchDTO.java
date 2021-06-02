package com.finalproj.missingitnow.common.search;

import java.io.Serializable;
import java.sql.Date;

import com.finalproj.missingitnow.common.page.PageInfoDTO;

public class DetailSearchDTO implements Serializable{

	private static final long serialVersionUID = 19518848977111787L;
	
	private PageInfoDTO pageInfo;
	private java.sql.Date searchWriteDateStart;
	private java.sql.Date searchWriteDateEnd;
	private String largeSearchCondition;
	private String smallSearchCondition;
	private String searchValue;
	
	public DetailSearchDTO() {}
	public DetailSearchDTO(PageInfoDTO pageInfo, Date searchWriteDateStart, Date searchWriteDateEnd,
			String largeSearchCondition, String smallSearchCondition, String searchValue) {
		this.pageInfo = pageInfo;
		this.searchWriteDateStart = searchWriteDateStart;
		this.searchWriteDateEnd = searchWriteDateEnd;
		this.largeSearchCondition = largeSearchCondition;
		this.smallSearchCondition = smallSearchCondition;
		this.searchValue = searchValue;
	}
	
	public PageInfoDTO getPageInfo() {
		return pageInfo;
	}
	public void setPageInfo(PageInfoDTO pageInfo) {
		this.pageInfo = pageInfo;
	}
	public java.sql.Date getSearchWriteDateStart() {
		return searchWriteDateStart;
	}
	public void setSearchWriteDateStart(java.sql.Date searchWriteDateStart) {
		this.searchWriteDateStart = searchWriteDateStart;
	}
	public java.sql.Date getSearchWriteDateEnd() {
		return searchWriteDateEnd;
	}
	public void setSearchWriteDateEnd(java.sql.Date searchWriteDateEnd) {
		this.searchWriteDateEnd = searchWriteDateEnd;
	}
	public String getLargeSearchCondition() {
		return largeSearchCondition;
	}
	public void setLargeSearchCondition(String largeSearchCondition) {
		this.largeSearchCondition = largeSearchCondition;
	}
	public String getSmallSearchCondition() {
		return smallSearchCondition;
	}
	public void setSmallSearchCondition(String smallSearchCondition) {
		this.smallSearchCondition = smallSearchCondition;
	}
	public String getSearchValue() {
		return searchValue;
	}
	public void setSearchValue(String searchValue) {
		this.searchValue = searchValue;
	}
	
	@Override
	public String toString() {
		return "ManageSearchDTO [pageInfo=" + pageInfo + ", searchWriteDateStart=" + searchWriteDateStart
				+ ", searchWriteDateEnd=" + searchWriteDateEnd + ", largeSearchCondition=" + largeSearchCondition
				+ ", smallSearchCondition=" + smallSearchCondition + ", searchValue=" + searchValue + "]";
	}
	
}
