package com.finalproj.missingitnow.admin.qna.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.finalproj.missingitnow.admin.qna.model.dto.QNADTO;
import com.finalproj.missingitnow.admin.qna.model.service.QNAService;
import com.finalproj.missingitnow.common.page.PageInfoDTO;
import com.finalproj.missingitnow.common.page.Pagenation;
import com.finalproj.missingitnow.common.search.DetailSearchDTO;
import com.finalproj.missingitnow.common.search.SearchDTO;
import com.finalproj.missingitnow.member.model.dto.PrivateMemberDTO;
import com.finalproj.missingitnow.corpMng.model.dto.CorpUserDTO;

@Controller
@RequestMapping("/admin/qna")
public class AdminQNAController {
	
	private final QNAService qnaService;
	
	@Autowired
	public AdminQNAController(QNAService qnaService) {
		
		this.qnaService = qnaService;
		
	}

	@GetMapping("/list")
	public String adminQNAListPage(HttpServletRequest request, Model model) {
		
		String condition = request.getParameter("searchCondition");
		String value = request.getParameter("searchValue");
		
		if(condition == null || "".equals(condition)) {
			
			condition = "all";
			
		}
		if(value == null) {
			
			value = "";
			
		}
		
		String no = null;
		
		String currentPage = request.getParameter("currentPage");
		
		int pageNo = 1;
		System.out.println(currentPage);
		if (currentPage != null && !"".equals(currentPage)) {

			pageNo = Integer.valueOf(currentPage);

			if (pageNo < 1) {

				pageNo = 1;

			}
		}

		if(request.getSession().getAttribute("loginMember") != null) {
			
			PrivateMemberDTO loginMember = (PrivateMemberDTO)request.getSession().getAttribute("loginMember");
			no = loginMember.getUserNo();
			
		} else if(request.getSession().getAttribute("CorpUserSession") != null) {
			
			CorpUserDTO loginMember = (CorpUserDTO)request.getSession().getAttribute("CorpUserSession");
			
			if("ADMIN".equals(loginMember.getCorpNo())) {
				
				SearchDTO search = new SearchDTO(null, condition, value);
				int totalCount = qnaService.selectAdminTotalCount(search);
				
				int limit = 10;
				int buttonAmount = 10;
				
				PageInfoDTO pageInfo = Pagenation.getPageInfo(pageNo, totalCount, limit, buttonAmount);
				
				search.setPageInfo(pageInfo);
				
				List<QNADTO> boardList = qnaService.selectAdminList(search);
				
				model.addAttribute("qnaList", boardList);
				model.addAttribute("search", search);
				
				return "admin/qna/adminQNAList";
				
			}
			
			no = loginMember.getCorpNo();
			
		}
		SearchDTO search = new SearchDTO(null, condition, value);
		
		Map<String, Object> mapperMap = new HashMap<>();
		
		mapperMap.put("no", no);
		mapperMap.put("search", search);
		
		int totalCount = qnaService.selectTotalCount(mapperMap);
		int limit = 10;

		int buttonAmount = 10;
		PageInfoDTO pageInfo = Pagenation.getPageInfo(pageNo, totalCount, limit, buttonAmount);
		
		search.setPageInfo(pageInfo);
		
		List<QNADTO> boardList = qnaService.selectList(mapperMap);
		
		model.addAttribute("qnaList", boardList);
		model.addAttribute("search", search);
		
		return "admin/qna/adminQNAList";
		
	}
	
	@GetMapping("/regist")
	public String adminQNARegistPage() {
		
		return "admin/qna/adminQNARegist";
		
	}
	
	@PostMapping("/regist")
	public String adminQNARegist(@ModelAttribute QNADTO qnaDTO, HttpServletRequest request, RedirectAttributes rttr) {
		
		String no = null;
		
		if(request.getSession().getAttribute("loginMember") != null) {
			
			PrivateMemberDTO loginMember = (PrivateMemberDTO)request.getSession().getAttribute("loginMember");
			no = loginMember.getUserNo();
			
		} else if(request.getSession().getAttribute("CorpUserSession") != null) {
			
			CorpUserDTO loginMember = (CorpUserDTO)request.getSession().getAttribute("CorpUserSession");
			no = loginMember.getCorpNo();
			
		}
		
		qnaDTO.setUserNo(no);
		
		if(qnaService.insertQNA(qnaDTO)) {
			
			rttr.addFlashAttribute("message", "qna????????? ?????????????????????!");
			
		} else {
				
			rttr.addFlashAttribute("message", "qna????????? ?????????????????????!");
			
		}
		
		return "redirect:list";
		
	}
	
	@GetMapping("/manage")
	public String adminQNAManagePage(HttpServletRequest request, Model model) {
		
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
		if(searchValue == null || "".equals(searchValue)) {
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

		int totalCount = qnaService.selectSearchTotalCount(search);
		
		int limit = 10;

		int buttonAmount = 10;
		PageInfoDTO pageInfo = Pagenation.getPageInfo(pageNo, totalCount, limit, buttonAmount);
		
		search.setPageInfo(pageInfo);
		
		List<QNADTO> boardList = qnaService.selectAllList(search);
		
		model.addAttribute("qnaList", boardList);
		model.addAttribute("search", search);
		
		return "admin/qna/adminQNAManage";
		
	}
	
	@GetMapping("/response")
	public String adminQNAResponsePage(@ModelAttribute QNADTO qnaDTO, Model model) {
		
		QNADTO qna = qnaService.selectDetail(qnaDTO.getNo());
		
		model.addAttribute("qna", qna);
		
		return "admin/qna/adminQNAResponse";
		
	}
	
	@PostMapping("/response")
	public String adminQNAResponse(@ModelAttribute QNADTO qnaDTO, RedirectAttributes rttr) {
		
		String message = null;
		
		if(qnaService.updateResponse(qnaDTO) == 2) {
			
			message = "?????? ????????? ?????????????????????.";
			
		} else {
			
			message = "?????? ????????? ?????????????????????.";
			
		}
		
		rttr.addFlashAttribute("message", message);
		
		return "redirect:manage";
		
	}
	
	@GetMapping("/detail")
	public String adminQNADetail(HttpServletRequest request, Model model) {
		
		String no = request.getParameter("qnaNo");
		
		QNADTO qna = qnaService.selectDetail(no);
		
		model.addAttribute("qna", qna);
		
		return "admin/qna/adminQNADetail";
		
	}
	
	@GetMapping("/update")
	public String adminQNAUpdatePage(Model model, @ModelAttribute QNADTO qnaDTO) {
		
		model.addAttribute("qna", qnaDTO);
		
		return "admin/qna/adminQNAUpdateForm";
		
	}
	
	@PostMapping("/update")
	public String adminQNAUpdate(@ModelAttribute QNADTO qnaDTO, RedirectAttributes rttr) {
		QNADTO qna = null;
		qna = qnaService.updateQNA(qnaDTO);
		
		if(qna != null) {
		
			rttr.addAttribute("qnaNo", qna.getNo());
			rttr.addFlashAttribute("message", "Q&A ????????? ?????????????????????.");
		
		} else {
			
			rttr.addAttribute("qnaNo", qnaDTO.getNo());
			rttr.addFlashAttribute("message", "Q&A ????????? ?????????????????????.");
			
		}
		return "redirect:detail";
		
	}
	
	@GetMapping("/delete")
	public String adminQNADelete(@ModelAttribute QNADTO qnaDTO, RedirectAttributes rttr) {
		
		String no = qnaDTO.getNo();
		
		if(qnaService.deleteQNA(no) == 1) {
			
			rttr.addFlashAttribute("message", "Q&A ????????? ?????????????????????");
			
		} else {
			
			rttr.addFlashAttribute("message", "Q&A ????????? ?????????????????????.");
			
		}
		
		return "redirect:list";
		
	}
	
	@PostMapping("/fileUpload")
	public void maltiFileUploadAjax(
			@ModelAttribute List<MultipartFile> uploadFiles,
			HttpServletRequest request, HttpServletResponse response) throws IOException {
		/* ?????? ?????? */
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		String path = root + "\\uploadFiles";
		
		File mkdir = new File(path);
		
		/* ?????? ?????? */
		if(!mkdir.exists()) {
			mkdir.mkdirs();
		}
		
		List<Map<String, String>> files = new ArrayList<>();
		for(int i = 0 ; i < uploadFiles.size() ; i++) {
			/* ????????? ?????? ?????? */
			String originName = uploadFiles.get(i).getOriginalFilename();
			String ext = originName.substring(originName.lastIndexOf("."));
			String rename = UUID.randomUUID().toString().replace("-", "") + ext;
			
			/* ????????? ?????? ?????? ?????? ??? ?????? */
			Map<String, String> file = new HashMap<>();
			file.put("originName", originName);
			file.put("rename", rename);
			file.put("path", path);
			
			files.add(file);
		} 
		
		List<Map<String, String>> urlList = new ArrayList<>();
		
		try {
			
			/* ????????? ???????????? */
				
			for(int i  = 0; i < uploadFiles.size() ; i++) {
				Map<String, String> file = files.get(i);
				Map<String, String> urlMap = new HashMap<>();
				String url = path + "\\" + file.get("rename");
				urlMap.put("url", url);
				urlList.add(urlMap);
				uploadFiles.get(i).transferTo(new File(path + "\\" + file.get("rename")));
			}
			
		} catch (IllegalStateException | IOException e) {
						e.printStackTrace();
			
			/* ????????? ?????? ?????? */
			for(int i = 0 ; i < uploadFiles.size() ; i++) {
				
				Map<String, String> file = files.get(i);
				
				new File(path + "\\" + file.get("rename")).delete();
				
			}
			
		}
		
		ObjectMapper mapper = new ObjectMapper();
		
		PrintWriter out = response.getWriter();
		out.print(mapper.writeValueAsString(urlList));
		
		out.flush();
		out.close();
		
	}
	
}
