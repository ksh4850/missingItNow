package com.finalproj.missingitnow.common.search;

import java.io.Serializable;
import java.sql.Date;

import com.finalproj.missingitnow.common.page.PageInfoDTO;

public class MoreSearchDTO implements Serializable{

	private static final long serialVersionUID = 2466841516072115369L;
	
	private PageInfoDTO pageInfo;
	private java.sql.Date searchWriteDateStart;
	private java.sql.Date searchWriteDateEnd;
	private String searchCondition;
	private String searchValue;
	
	public MoreSearchDTO() {}
	public MoreSearchDTO(PageInfoDTO pageInfo, Date searchWriteDateStart, Date searchWriteDateEnd, String searchCondition,
			String searchValue) {
		this.pageInfo = pageInfo;
		this.searchWriteDateStart = searchWriteDateStart;
		this.searchWriteDateEnd = searchWriteDateEnd;
		this.searchCondition = searchCondition;
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
	public String getSearchCondition() {
		return searchCondition;
	}
	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}
	public String getSearchValue() {
		return searchValue;
	}
	public void setSearchValue(String searchValue) {
		this.searchValue = searchValue;
	}

	@Override
	public String toString() {
		return "SearchDTO [pageInfo=" + pageInfo + ", searchWriteDateStart=" + searchWriteDateStart
				+ ", searchWriteDateEnd=" + searchWriteDateEnd + ", searchCondition=" + searchCondition
				+ ", searchValue=" + searchValue + "]";
	}
	
}
