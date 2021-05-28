package com.finalproj.missingitnow.admin.qna.model.dao;

import java.util.List;

import com.finalproj.missingitnow.admin.qna.model.dto.ManageSearchDTO;
import com.finalproj.missingitnow.admin.qna.model.dto.QNADTO;
import com.finalproj.missingitnow.admin.qna.model.dto.SearchDTO;

public interface QNAMapper{

	int selectTotalCount();
	
	int selectSearchTotalCount(ManageSearchDTO search);

	List<QNADTO> selectList(SearchDTO search);

	int insertQNA(QNADTO qnaDTO);

	List<QNADTO> selectAllList(ManageSearchDTO search);

	int increamentBoardCount(int no);

	QNADTO selectDetail(int no);

	int updateQNA(QNADTO qnaDTO);

	int deleteQNA(int no);

	int updateResponse(QNADTO qnaDTO);

	int updateReplyCheck(QNADTO qnaDTO);

}
