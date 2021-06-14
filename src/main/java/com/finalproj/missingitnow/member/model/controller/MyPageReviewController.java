package com.finalproj.missingitnow.member.model.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.finalproj.missingitnow.common.page.PageInfoDTO;
import com.finalproj.missingitnow.common.page.Pagenation;
import com.finalproj.missingitnow.member.model.dto.MyPageReviewDTO;
import com.finalproj.missingitnow.member.model.dto.PrivateMemberDTO;
import com.finalproj.missingitnow.member.model.service.ReviewService;
import com.finalproj.missingitnow.product.model.dto.ReviewDTO;

@Controller
@RequestMapping("/member/review")
public class MyPageReviewController {
	
	
	private final ReviewService reviewService;
	
	
	@Autowired
	public MyPageReviewController(ReviewService reviewService) {
		super();
		this.reviewService = reviewService;
	}




	@PostMapping
	public String review(@RequestParam(value="currentPage", required=false, defaultValue="1") String currentPage
			, PrivateMemberDTO member
			, Model model) {
		
		
		int pageNo = 1;
		
		

		if(currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.valueOf(currentPage);
			

			if(pageNo <= 0) {
				pageNo = 1;
			}
		}
		

		int totalCount = reviewService.selectTotalCount();

		int limit = 10;

		int buttonAmount = 5;
		

		PageInfoDTO pageInfo = Pagenation.getPageInfo(pageNo, totalCount, limit, buttonAmount);
		
		
		
		
		String userNo = member.getUserNo();
		

		
		int startRow = pageInfo.getStartRow();
		
		int endRow = pageInfo.getEndRow();
		
		
		List<MyPageReviewDTO> reviewList = reviewService.selectReviewList(pageInfo, userNo, startRow, endRow);
		
		model.addAttribute("reviewList", reviewList);
		model.addAttribute("totalCount", totalCount);
		
		
		return "member/review";
	}
	
}
