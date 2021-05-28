package com.finalproj.missingitnow.admin.qna.model.service;

import java.util.List;

import com.finalproj.missingitnow.admin.qna.model.dto.ManageSearchDTO;
import com.finalproj.missingitnow.admin.qna.model.dto.QNADTO;
import com.finalproj.missingitnow.admin.qna.model.dto.SearchDTO;

public interface QNAService {

	int selectTotalCount();
	
	int selectSearchTotalCount(ManageSearchDTO search);

	List<QNADTO> selectList(SearchDTO search);

	boolean insertQNA(QNADTO qnaDTO);

	List<QNADTO> selectAllList(ManageSearchDTO search);

	QNADTO selectDetail(int no);

	QNADTO updateQNA(QNADTO qnaDTO);

	int deleteQNA(int no);

	int updateResponse(QNADTO qnaDTO);

}
