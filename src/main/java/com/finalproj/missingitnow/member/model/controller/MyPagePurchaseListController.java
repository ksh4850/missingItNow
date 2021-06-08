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
import com.finalproj.missingitnow.member.model.dto.PurchasedListDTO;
import com.finalproj.missingitnow.member.model.service.PurchaseListService;
import com.finalproj.missingitnow.member.model.service.ReviewService;

@Controller
@RequestMapping("/member/purchaseList")
public class MyPagePurchaseListController {
	
private final PurchaseListService purchaseService;
	
	
	@Autowired
	public MyPagePurchaseListController(PurchaseListService purchaseService) {
		super();
		this.purchaseService = purchaseService;
	}
	
	
	@PostMapping
	public String purchaseList(@RequestParam(value="currentPage", required=false, defaultValue="1") String currentPage
			, PrivateMemberDTO member
			, Model model){
		
		int pageNo = 1;
		
		

		if(currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.valueOf(currentPage);
			

			if(pageNo <= 0) {
				pageNo = 1;
			}
		}
		

		int totalCount = purchaseService.selectTotalCount();

		int limit = 10;

		int buttonAmount = 5;
		

		PageInfoDTO pageInfo = Pagenation.getPageInfo(pageNo, totalCount, limit, buttonAmount);
		
		
		
		
		String userNo = member.getUserNo();
		
		System.out.println(userNo);
		
		int startRow = pageInfo.getStartRow();
		
		int endRow = pageInfo.getEndRow();
		
		
		List<PurchasedListDTO> purchaseList = purchaseService.selectPurchaseList(pageInfo, userNo, startRow, endRow);
		
		model.addAttribute("purchaseList", purchaseList);
		model.addAttribute("totalCount", totalCount);
		
		return "member/purchaseList";
	}
	
}
