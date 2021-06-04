package com.finalproj.missingitnow.member.model.service;

import java.util.List;

import com.finalproj.missingitnow.common.page.PageInfoDTO;
import com.finalproj.missingitnow.member.model.dto.QnaBoardDTO;

public interface QnaBoardService {

	int selectTotalCount();

	List<QnaBoardDTO> selectBoardList(PageInfoDTO pageInfo, String userNo, int startRow, int endRow);

}
