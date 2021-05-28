package com.finalproj.missingitnow.admin.qna.model.dto;

import java.io.Serializable;

import com.finalproj.missingitnow.common.page.PageInfoDTO;

public class SearchDTO implements Serializable{

	private static final long serialVersionUID = 2466841516072115369L;
	
	private PageInfoDTO pageInfo;
	private String searchCondition;
	private String searchValue;
	
	public SearchDTO() {}
	public SearchDTO(PageInfoDTO pageInfo, String searchCondition, String searchValue) {
		this.pageInfo = pageInfo;
		this.searchCondition = searchCondition;
		this.searchValue = searchValue;
	}

	public PageInfoDTO getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(PageInfoDTO pageInfo) {
		this.pageInfo = pageInfo;
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
		return "SearchDTO [pageInfo=" + pageInfo + ", searchCondition=" + searchCondition + ", searchValue="
				+ searchValue + "]";
	}
	
	
}
