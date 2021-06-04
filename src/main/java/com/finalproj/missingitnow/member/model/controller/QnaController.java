package com.finalproj.missingitnow.member.model.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.finalproj.missingitnow.common.page.PageInfoDTO;
import com.finalproj.missingitnow.common.page.Pagenation;
import com.finalproj.missingitnow.member.model.dto.PrivateMemberDTO;
import com.finalproj.missingitnow.member.model.dto.QnaBoardDTO;
import com.finalproj.missingitnow.member.model.service.QnaBoardService;

@Controller
@RequestMapping("/member/QNA")
public class QnaController {
	
	private final QnaBoardService qnaService;
	
	
	
	@Autowired
	public QnaController(QnaBoardService qnaService) {
		super();
		this.qnaService = qnaService;
	}




	@PostMapping
	public String Qna(@RequestParam(value="currentPage", required=false, defaultValue="1") String currentPage
			, @ModelAttribute PrivateMemberDTO member
			, Model model) {
		
		int pageNo = 1;
		
		

		if(currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.valueOf(currentPage);
			

			if(pageNo <= 0) {
				pageNo = 1;
			}
		}
		

		int totalCount = qnaService.selectTotalCount();

		int limit = 10;

		int buttonAmount = 5;
		

		PageInfoDTO pageInfo = Pagenation.getPageInfo(pageNo, totalCount, limit, buttonAmount);
		
		String userNo = member.getUserNo();
		int startRow = pageInfo.getStartRow();
		int endRow = pageInfo.getEndRow();
		
		System.out.println("세션상의 userNo : " + userNo);
		
		List<QnaBoardDTO> boardList = qnaService.selectBoardList(pageInfo, userNo, startRow, endRow);
		
			
		model.addAttribute("boardList", boardList);
		model.addAttribute("pageInfo", pageInfo);
		
		return "member/QNA";
	}
}
