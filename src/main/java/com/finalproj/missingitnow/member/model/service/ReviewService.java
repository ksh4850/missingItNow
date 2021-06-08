package com.finalproj.missingitnow.member.model.service;

import java.util.List;

import com.finalproj.missingitnow.common.page.PageInfoDTO;
import com.finalproj.missingitnow.member.model.dto.MyPageReviewDTO;

public interface ReviewService {

	int selectTotalCount();

	List<MyPageReviewDTO> selectReviewList(PageInfoDTO pageInfo, String userNo, int startRow, int endRow);

}
