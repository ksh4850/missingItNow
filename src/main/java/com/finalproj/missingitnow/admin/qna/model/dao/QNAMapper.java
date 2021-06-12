package com.finalproj.missingitnow.admin.qna.model.dao;

import java.util.List;
import java.util.Map;

import com.finalproj.missingitnow.admin.qna.model.dto.QNADTO;
import com.finalproj.missingitnow.common.search.DetailSearchDTO;
import com.finalproj.missingitnow.common.search.SearchDTO;

public interface QNAMapper{

	int selectTotalCount(Map<String, Object> mapperMap);
	
	int selectSearchTotalCount(DetailSearchDTO search);

	List<QNADTO> selectList(Map<String, Object> mapperMap);

	int insertQNA(QNADTO qnaDTO);

	List<QNADTO> selectAllList(DetailSearchDTO search);

	int increamentBoardCount(String no);

	QNADTO selectDetail(String no);

	int updateQNA(QNADTO qnaDTO);

	int deleteQNA(String no);

	int updateResponse(QNADTO qnaDTO);

	int updateReplyCheck(QNADTO qnaDTO);

	int selectAdminTotalCount(SearchDTO search);

	List<QNADTO> selectAdminList(SearchDTO search);

}
