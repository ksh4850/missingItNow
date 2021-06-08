package com.finalproj.missingitnow.member.model.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.finalproj.missingitnow.common.page.PageInfoDTO;
import com.finalproj.missingitnow.member.model.dto.MyPageReviewDTO;

public interface ReviewMapper {

	public int selectTotalCount();

	public List<MyPageReviewDTO> selectReviewList(@Param("pageInfo")PageInfoDTO pageInfo 
			, @Param("userNo") String userNo
			, @Param("startRow") int startRow, @Param("endRow") int endRow);

}
