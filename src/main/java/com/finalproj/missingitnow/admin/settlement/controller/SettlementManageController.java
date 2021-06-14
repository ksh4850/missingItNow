package com.finalproj.missingitnow.admin.settlement.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.finalproj.missingitnow.admin.settlement.model.service.SettlementService;
import com.finalproj.missingitnow.common.page.PageInfoDTO;
import com.finalproj.missingitnow.common.page.Pagenation;
import com.finalproj.missingitnow.common.search.DetailSearchDTO;
import com.finalproj.missingitnow.corpMng.model.dto.SettleMngSettlementDTO;

@Controller
@RequestMapping("/admin/settlement")
public class SettlementManageController {
	
	private final SettlementService settlementService;
	
	public SettlementManageController(SettlementService settlementService) {
		
		this.settlementService = settlementService;
		
	}

	@GetMapping("/breakdown")
	public String adminSettlementBreakdownPage(HttpServletRequest request, Model model) {
		
		// 정산신청 리스트 불러오기
		java.sql.Date searchWriteDateStart = null;
		java.sql.Date searchWriteDateEnd = null;
		String largeSearchCondition = request.getParameter("largeSearchCondition");
		String smallSearchCondition = request.getParameter("smallSearchCondition");
		String searchValue = request.getParameter("searchValue");
		String currentPage = request.getParameter("currentPage");
		if(request.getParameter("searchWriteDateStart") != null && !"".equals(request.getParameter("searchWriteDateStart"))) {
			searchWriteDateStart = java.sql.Date.valueOf(request.getParameter("searchWriteDateStart"));
		}
		if(request.getParameter("searchWriteDateEnd") != null && !"".equals(request.getParameter("searchWriteDateEnd"))) {
			searchWriteDateEnd = java.sql.Date.valueOf(request.getParameter("searchWriteDateEnd"));
		}
		if(searchValue == null) {
			searchValue = "";
		}
		if(smallSearchCondition == null || "".equals(smallSearchCondition)) {
			smallSearchCondition = "id";
		}
		if(largeSearchCondition == null || "".equals(largeSearchCondition)) {
			largeSearchCondition = "all";
		}
		
		int pageNo = 1;
		if (currentPage != null && !"".equals(currentPage)) {

			pageNo = Integer.valueOf(currentPage);

			if (pageNo < 1) {

				pageNo = 1;

			}
		}

		DetailSearchDTO search = new DetailSearchDTO(null, searchWriteDateStart, searchWriteDateEnd, largeSearchCondition, smallSearchCondition, searchValue);
		
		int totalCount = settlementService.selectTotalCount(search);
		
		int limit = 10;

		int buttonAmount = 10;
		PageInfoDTO pageInfo = Pagenation.getPageInfo(pageNo, totalCount, limit, buttonAmount);
		
		search.setPageInfo(pageInfo);

		List<SettleMngSettlementDTO> settlementList = settlementService.selectList(search);
		
		model.addAttribute("settlementList", settlementList);
		model.addAttribute("search", search);
		
		return "admin/manageSettlement/settlementBreakdown";
		
	}
	
	@PostMapping("/progress")
	public String adminSettlementProgress(HttpServletRequest request, RedirectAttributes rttr) {
		
		String[] settlementNo = request.getParameterValues("data");
		
		settlementService.updateSettlementProgress(settlementNo);
		
		return "redirect:breakdown";
		
	}
	
}
