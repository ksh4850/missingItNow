package com.finalproj.missingitnow.admin.qna.model.service;

import java.util.List;
import java.util.Map;

import com.finalproj.missingitnow.admin.qna.model.dto.QNADTO;
import com.finalproj.missingitnow.common.search.DetailSearchDTO;
import com.finalproj.missingitnow.common.search.SearchDTO;

public interface QNAService {

	int selectSearchTotalCount(DetailSearchDTO search);

	boolean insertQNA(QNADTO qnaDTO);

	List<QNADTO> selectAllList(DetailSearchDTO search);

	QNADTO selectDetail(String no);

	QNADTO updateQNA(QNADTO qnaDTO);

	int deleteQNA(String no);

	int updateResponse(QNADTO qnaDTO);

	int selectTotalCount(Map<String, Object> mapperMap);

	List<QNADTO> selectList(Map<String, Object> mapperMap);

	int selectAdminTotalCount(SearchDTO search);

	List<QNADTO> selectAdminList(SearchDTO search);

}
