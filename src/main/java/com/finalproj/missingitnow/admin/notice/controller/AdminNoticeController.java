package com.finalproj.missingitnow.admin.notice.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.finalproj.missingitnow.admin.notice.model.dto.NoticeDTO;
import com.finalproj.missingitnow.admin.notice.model.service.NoticeService;
import com.finalproj.missingitnow.common.page.PageInfoDTO;
import com.finalproj.missingitnow.common.page.Pagenation;
import com.finalproj.missingitnow.common.search.MoreSearchDTO;

@Controller
@RequestMapping("/admin/ntc")
public class AdminNoticeController {

private final NoticeService ntcService;
	
	@Autowired
	public AdminNoticeController(NoticeService ntcService) {
		
		this.ntcService = ntcService;
		
	}

	@RequestMapping("/list")
	public String adminNTCListPage(HttpServletRequest request, Model model) {
		
		String searchCondition = request.getParameter("searchCondition");
		String searchValue = request.getParameter("searchValue");
		java.sql.Date searchWriteDateStart = null;
		java.sql.Date searchWriteDateEnd = null;
		
		if(request.getParameter("searchWriteDateStart") != null && !"".equals(request.getParameter("searchWriteDateStart"))) {
			
			searchWriteDateStart = java.sql.Date.valueOf(request.getParameter("searchWriteDateStart"));
			
		}
		if(request.getParameter("searchWriteDateEnd") != null && !"".equals(request.getParameter("searchWriteDateEnd"))) {
			
			searchWriteDateEnd = java.sql.Date.valueOf(request.getParameter("searchWriteDateEnd"));
			
		}
		if(searchValue == null) {
			
			searchValue = "";
			
		}
		if(searchCondition == null || "".equals(searchCondition)) {
			
			searchCondition = "all";
			
		}
		String currentPage = request.getParameter("currentPage");
		
		int pageNo = 1;
		if (currentPage != null && !"".equals(currentPage)) {

			pageNo = Integer.valueOf(currentPage);

			if (pageNo < 1) {

				pageNo = 1;

			}
		}

		int totalCount = ntcService.selectTotalCount();
		
		int limit = 10;

		int buttonAmount = 10;
		PageInfoDTO pageInfo = Pagenation.getPageInfo(pageNo, totalCount, limit, buttonAmount);
		
		MoreSearchDTO search = new MoreSearchDTO(pageInfo, searchWriteDateStart, searchWriteDateEnd, searchCondition, searchValue);

		List<NoticeDTO> boardList = ntcService.selectList(search);
		
		model.addAttribute("ntcList", boardList);
		model.addAttribute("search", search);
		
		return "admin/notice/adminNTCList";
		
	}
	
	@GetMapping("/regist")
	public String adminNTCRegistPage() {
		
		return "admin/notice/adminNTCRegist";
		
	}
	
	@PostMapping("/regist")
	public String adminNTCRegist(@ModelAttribute NoticeDTO ntcDTO, HttpServletRequest request, RedirectAttributes rttr) {
		
		if(ntcService.insertNTC(ntcDTO)) {
			
			rttr.addFlashAttribute("message", "???????????? ????????? ?????????????????????!");
			
		} else {
				
			rttr.addFlashAttribute("message", "???????????? ????????? ?????????????????????!");
			
		}
		
		return "redirect:list";
		
	}
	
	@GetMapping("/detail")
	public String adminNTCDetail(HttpServletRequest request, Model model) {
		
		String no = request.getParameter("no");
		
		NoticeDTO notice = ntcService.selectDetail(no);
		
		model.addAttribute("ntc", notice);
		
		return "admin/notice/adminNTCDetail";
		
	}
	
	@GetMapping("/update")
	public String adminNTCUpdatePage(Model model, @ModelAttribute NoticeDTO ntcDTO) {
		
		model.addAttribute("ntc", ntcDTO);
		
		return "admin/notice/adminNTCUpdate";
		
	}
	
	@PostMapping("/update")
	public String adminNTCUpdate(@ModelAttribute NoticeDTO ntcDTO, RedirectAttributes rttr) {
		NoticeDTO ntc = null;
		ntc = ntcService.updateNTC(ntcDTO);
		
		if(ntc != null) {
		
			rttr.addAttribute("no", ntc.getNo());
			rttr.addFlashAttribute("message", "???????????? ????????? ?????????????????????.");
		
		} else {
			
			rttr.addAttribute("no", ntcDTO.getNo());
			rttr.addFlashAttribute("message", "???????????? ????????? ?????????????????????.");
			
		}
		return "redirect:detail";
		
	}
	
	@GetMapping("/delete")
	public String adminNTCDelete(@ModelAttribute NoticeDTO ntcDTO, RedirectAttributes rttr) {
		
		String no = ntcDTO.getNo();
		
		if(ntcService.deleteNTC(no) == 1) {
			
			rttr.addFlashAttribute("message", "???????????? ????????? ?????????????????????");
			
		} else {
			
			rttr.addFlashAttribute("message", "???????????? ????????? ?????????????????????.");
			
		}
		
		return "redirect:list";
		
	}
	
}
