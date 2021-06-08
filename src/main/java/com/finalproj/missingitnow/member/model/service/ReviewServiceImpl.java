package com.finalproj.missingitnow.member.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproj.missingitnow.common.page.PageInfoDTO;
import com.finalproj.missingitnow.member.model.dao.ReviewMapper;
import com.finalproj.missingitnow.member.model.dto.MyPageReviewDTO;

@Service
public class ReviewServiceImpl implements ReviewService{

	ReviewMapper mapper;
	
	@Autowired
	public ReviewServiceImpl(ReviewMapper mapper) {
		super();
		this.mapper = mapper;
	}

	@Override
	public int selectTotalCount() {
		
		return mapper.selectTotalCount();
	}

	@Override
	public List<MyPageReviewDTO> selectReviewList(PageInfoDTO pageInfo, String userNo, int startRow, int endRow) {
		
		return mapper.selectReviewList(pageInfo, userNo, startRow, endRow);
	}

}
