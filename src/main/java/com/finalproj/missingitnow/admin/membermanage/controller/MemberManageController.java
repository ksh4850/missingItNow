package com.finalproj.missingitnow.admin.membermanage.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.finalproj.missingitnow.admin.membermanage.model.dto.OrderDTO;
import com.finalproj.missingitnow.admin.membermanage.model.dto.UserDTO;
import com.finalproj.missingitnow.admin.membermanage.model.service.MemberManageService;
import com.finalproj.missingitnow.common.page.PageInfoDTO;
import com.finalproj.missingitnow.common.page.Pagenation;
import com.finalproj.missingitnow.common.search.DetailSearchDTO;

@Controller
@RequestMapping("/admin/userManage/")
public class MemberManageController {
	
	private final MemberManageService memberService;
	
	@Autowired
	public MemberManageController(MemberManageService memberService) {
		
		this.memberService = memberService;
		
	}

	@GetMapping("/list")
	public String adminUserManageList(HttpServletRequest request, Model model) {
		
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
			smallSearchCondition = "all";
		}
		if(largeSearchCondition == null || "".equals(largeSearchCondition)) {
			largeSearchCondition = "all";
		}
		
		int pageNo = 1;
		System.out.println(currentPage);
		if (currentPage != null && !"".equals(currentPage)) {

			pageNo = Integer.valueOf(currentPage);

			if (pageNo < 1) {

				pageNo = 1;

			}
		}

		DetailSearchDTO search = new DetailSearchDTO(null, searchWriteDateStart, searchWriteDateEnd, largeSearchCondition, smallSearchCondition, searchValue);
		
		int totalCount = memberService.selectTotalCount(search);
		
		int limit = 10;

		int buttonAmount = 10;
		PageInfoDTO pageInfo = Pagenation.getPageInfo(pageNo, totalCount, limit, buttonAmount);
		
		search.setPageInfo(pageInfo);

		List<UserDTO> userList = memberService.selectUserList(search);
		
		model.addAttribute("userList", userList);
		model.addAttribute("search", search);
		
		return "admin/memberInfo/memberList";
		
	}
	
	@GetMapping("/purchase/list")
	public String adminUserOrderList(HttpServletRequest request, Model model) {
		
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
			smallSearchCondition = "all";
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
		
		Map<String, Object> orderSearch = new HashMap<>();
		System.out.println(request.getParameter("no"));
		orderSearch.put("no", request.getParameter("no"));
		orderSearch.put("search", search);
		
		System.out.println(orderSearch);
		
		int totalCount = memberService.selectOrderTotalCount(orderSearch);
		
		System.out.println(totalCount);
		
		int limit = 10;

		int buttonAmount = 10;
		PageInfoDTO pageInfo = Pagenation.getPageInfo(pageNo, totalCount, limit, buttonAmount);
		
		search.setPageInfo(pageInfo);

		List<OrderDTO> orderList = memberService.selectOrderList(orderSearch);
		
		System.out.println(orderList);
		
		model.addAttribute("orderList", orderList);
		model.addAttribute("orderSearch", orderSearch);
		
		return "admin/memberInfo/purchaseList";
		
	}
	
}
