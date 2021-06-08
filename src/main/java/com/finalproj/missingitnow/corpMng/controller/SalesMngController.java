package com.finalproj.missingitnow.corpMng.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.finalproj.missingitnow.common.page.PageInfoDTO;
import com.finalproj.missingitnow.common.page.Pagenation;
import com.finalproj.missingitnow.corpMng.model.dto.SalesMngOrderDTO;
import com.finalproj.missingitnow.corpMng.model.dto.SalesMngSalesDTO;
import com.finalproj.missingitnow.corpMng.model.service.SalesMngService;
import com.google.gson.Gson;

@Controller
@RequestMapping("/salesMng")
public class SalesMngController {
	
	private final SalesMngService salesMngService;
	
	@Autowired
	public SalesMngController(SalesMngService salesMngService) {
		this.salesMngService = salesMngService;
	}
	
	// 주문내역 전체 조회	** 세션 아직 적용 안함 **
	@GetMapping("/selectOrderList")
	public String selectOrderList(Model model, @RequestParam(required=false) String currentPage) {
		
		int pageNo = 1;
		
		if(currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.valueOf(currentPage);
			if(pageNo <= 0) {
				pageNo = 1;
			}
		}
		
		int totalCount = salesMngService.selectTotalOrderList();
		System.out.println("totalCount : " + totalCount);
		
		int limit = 15;
		int buttonAmount = 5;
		
		PageInfoDTO pageInfo = Pagenation.getPageInfo(pageNo, totalCount, limit, buttonAmount);
		
		List<SalesMngOrderDTO> orderList = salesMngService.selectOrderList(pageInfo);
		
//		for(SalesMngOrderDTO selectOrder : orderList) {
//			System.out.println(selectOrder);
//		}
		
		model.addAttribute("orderList", orderList);
		model.addAttribute("pageInfo", pageInfo);
		
		return "/corpMng/salesMng-selectOrderList";
	}
	
	
	// 기간별 주문내역 조회
	@GetMapping("/searchOrderListByDate")
	public String searchOrderListByDate(Model model, @ModelAttribute SalesMngOrderDTO salesMngOrderList,
												@RequestParam(required=false) String currentPage) {
		
		int pageNo = 1;
		
		if(currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.valueOf(currentPage);
			if(pageNo <= 0) {
				pageNo = 1;
			}
		}
		
		int totalCount = salesMngService.searchTotalOrderList(salesMngOrderList);
		System.out.println("totalCount : " + totalCount);
		
		int limit = 15;
		int buttonAmount = 5;
		
		PageInfoDTO pageInfo = Pagenation.getPageInfo(pageNo, totalCount, limit, buttonAmount);
		
		Map<String, Object> params = new HashMap<>();
		params.put("startDate", salesMngOrderList.getStartDate());
		params.put("endDate", salesMngOrderList.getEndDate());
		params.put("pageInfo", pageInfo);
		
		List<SalesMngOrderDTO> orderList = salesMngService.searchOrderListByDate(params);
		
//		for(SalesMngOrderDTO selectOrder : orderList) {
//			System.out.println(selectOrder);
//		}
		
		model.addAttribute("orderList", orderList);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("params", params);
		
		return "/corpMng/salesMng-selectOrderList";
	}
	
	// 매출내역 전체 조회
	@GetMapping("/selectSalesList")
	public String selectSalesList(Model model, @RequestParam(required=false) String currentPage) {
		
		int pageNo = 1;
		
		if(currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.valueOf(currentPage);
			if(pageNo <= 0) {
				pageNo = 1;
			}
		}
		
		int totalCount = salesMngService.selectTotalSalesList();
		System.out.println("totalCount : " + totalCount);
		
		int limit = 15;
		int buttonAmount = 5;
		
		PageInfoDTO pageInfo = Pagenation.getPageInfo(pageNo, totalCount, limit, buttonAmount);
		
		List<SalesMngSalesDTO> salesList = salesMngService.selectSalesList(pageInfo);
		
		for(SalesMngSalesDTO sales : salesList) {
			System.out.println(sales);
		}
		
		model.addAttribute("salesList", salesList);
		model.addAttribute("pageInfo", pageInfo);
		
		return "/corpMng/salesMng-selectSalesList";
	}
	
	// 기간별 매출내역 조회
	@GetMapping("/searchSalesListByDate")
	public String searchSalesListByDate(Model model, @ModelAttribute SalesMngSalesDTO salesMngSalesList,
											@RequestParam(required=false) String currentPage) {
		
		int pageNo = 1;
		
		if(currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.valueOf(currentPage);
			if(pageNo <= 0) {
				pageNo = 1;
			}
		}
		
		int totalCount = salesMngService.searchTotalSalesList(salesMngSalesList);
		System.out.println("totalCount : " + totalCount);
		
		int limit = 15;
		int buttonAmount = 5;
		
		PageInfoDTO pageInfo = Pagenation.getPageInfo(pageNo, totalCount, limit, buttonAmount);
		
		Map<String, Object> params = new HashMap<>();
		params.put("startDate", salesMngSalesList.getStartDate());
		params.put("endDate", salesMngSalesList.getEndDate());
		params.put("pageInfo", pageInfo);
		
		List<SalesMngSalesDTO> salesList = salesMngService.searchSalesListByDate(params);
		
		for(SalesMngSalesDTO sales : salesList) {
			System.out.println(sales);
		}
		
		model.addAttribute("salesList", salesList);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("params", params);

		return "/corpMng/salesMng-selectSalesList";
	}
	
	// 예상 정산금 조회 (정산하기를 위한 값)
//	@PostMapping("/expectedSettlementList")
//	public String expectedSettlementList(Model model, @ModelAttribute SalesMngSalesDTO salesMngSalesList) {
//		
//		SalesMngSalesDTO expectedSettlement = salesMngService.expectedSettlementList(salesMngSalesList);
//		System.out.println(expectedSettlement);
//		
//		model.addAttribute("expectedSettlement", expectedSettlement);
//		
//		return "/corpMng/settleMng-settlementNList";
//	}
	
	// 예상 정산금 조회 (Ajax)
	@PostMapping(value="/selectExpectedTotalSettlement", produces="application/json; charset=UTF-8")
	@ResponseBody
	public String selectExpectedTotalSettlement(@ModelAttribute SalesMngSalesDTO salesMngSalesList) {
		
		Gson gson = new Gson();
		
		SalesMngSalesDTO expectedSettlement = salesMngService.expectedSettlementList(salesMngSalesList);
		
		return gson.toJson(expectedSettlement);
	}
	
}


















