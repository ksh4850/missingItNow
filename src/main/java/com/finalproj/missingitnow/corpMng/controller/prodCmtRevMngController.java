package com.finalproj.missingitnow.corpMng.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.finalproj.missingitnow.common.page.PageInfoDTO;
import com.finalproj.missingitnow.common.page.Pagenation;
import com.finalproj.missingitnow.corpMng.model.dto.CorpUserDTO;
import com.finalproj.missingitnow.corpMng.model.dto.ProdCmtListDTO;
import com.finalproj.missingitnow.corpMng.model.dto.ProdMngProductDTO;
import com.finalproj.missingitnow.corpMng.model.dto.ProdRevListDTO;
import com.finalproj.missingitnow.corpMng.model.service.ProdCmtRevMngService;


@Controller
@RequestMapping("/prodCmtRevMng")
@SessionAttributes("CorpUserSession")
public class prodCmtRevMngController {
	
	private final ProdCmtRevMngService prodCmtRevMngService;

	@Autowired
	public prodCmtRevMngController(ProdCmtRevMngService prodCmtRevMngService) {
		this.prodCmtRevMngService = prodCmtRevMngService;
	}
	
	// 상품문의 전체 조회
	@GetMapping("/productCmtList")
	public String selectProductCmtList(Model model, @RequestParam(required=false) String currentPage) {
		
		CorpUserDTO CorpUserSession = (CorpUserDTO)model.getAttribute("CorpUserSession");
		
		int pageNo = 1;
		
		if(currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.valueOf(currentPage);
			if(pageNo <= 0) {
				pageNo = 1;
			}
		}
		
		int totalCount = prodCmtRevMngService.selectTotalProductCmtList(CorpUserSession);
//		System.out.println("totalCount : " + totalCount);
		int limit = 15;
		int buttonAmount = 5;
		
		PageInfoDTO pageInfo = Pagenation.getPageInfo(pageNo, totalCount, limit, buttonAmount);
		
		Map<String, Object> params = new HashMap<>();
		params.put("corpNo", CorpUserSession.getCorpNo());
		params.put("pageInfo", pageInfo);
		
		List<ProdCmtListDTO> productCmtList = prodCmtRevMngService.selectProductCmtList(params);
//		for(ProdCmtListDTO a : productCmtList) {
//			System.out.println("productCmt : " + a);
//		}
		
		model.addAttribute("productCmtList", productCmtList);
		model.addAttribute("pageInfo", pageInfo);
		
		return "/corpMng/prodCmtRevMng-selectCmtList";
	}
	
	// 상품리뷰 전체 조회
	@GetMapping("/productRevList")
	public String selectProductRevList(Model model, @RequestParam(required=false) String currentPage) {
		
		CorpUserDTO CorpUserSession = (CorpUserDTO)model.getAttribute("CorpUserSession");
		
		int pageNo = 1;
		
		if(currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.valueOf(currentPage);
			if(pageNo <= 0) {
				pageNo = 1;
			}
		}
		
		int totalCount = prodCmtRevMngService.selectTotalProductRevList(CorpUserSession);
//		System.out.println("totalCount : " + totalCount);
		int limit = 15;
		int buttonAmount = 5;
		
		PageInfoDTO pageInfo = Pagenation.getPageInfo(pageNo, totalCount, limit, buttonAmount);
		
		Map<String, Object> params = new HashMap<>();
		params.put("corpNo", CorpUserSession.getCorpNo());
		params.put("pageInfo", pageInfo);
		
		List<ProdRevListDTO> productRevList = prodCmtRevMngService.selectProductRevList(params);
//		for(ProdRevListDTO a : productRevList) {
//			System.out.println("productRev : " + a);
//		}
		
		model.addAttribute("productRevList", productRevList);
		model.addAttribute("pageInfo", pageInfo);
		
		return "/corpMng/prodCmtRevMng-selectRevList";
	}
	
	
}
