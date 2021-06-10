package com.finalproj.missingitnow.admin.qna.model.service;

import java.util.List;

import com.finalproj.missingitnow.admin.qna.model.dto.QNADTO;
import com.finalproj.missingitnow.common.search.DetailSearchDTO;
import com.finalproj.missingitnow.common.search.SearchDTO;

public interface QNAService {

	int selectTotalCount();
	
	int selectSearchTotalCount(DetailSearchDTO search);

	List<QNADTO> selectList(SearchDTO search);

	boolean insertQNA(QNADTO qnaDTO);

	List<QNADTO> selectAllList(DetailSearchDTO search);

	QNADTO selectDetail(String no);

	QNADTO updateQNA(QNADTO qnaDTO);

	int deleteQNA(String no);

	int updateResponse(QNADTO qnaDTO);

}
