package com.finalproj.missingitnow.corpMng.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
	public String selectOrderList(Model model) {
		
		List<SalesMngOrderDTO> orderList = salesMngService.selectOrderList();
		
//		for(SalesMngOrderDTO selectOrder : orderList) {
//			System.out.println(selectOrder);
//		}
		
		model.addAttribute("orderList", orderList);
		
		return "/corpMng/salesMng-selectOrderList";
	}
	
	
	// 기간별 주문내역 조회
	@PostMapping("/selectOrderListByDate")
	public String selectOrderListByDate(Model model, @ModelAttribute SalesMngOrderDTO salesMngOrderList) {
		
		List<SalesMngOrderDTO> orderList = salesMngService.selectOrderListByDate(salesMngOrderList);
		
//		for(SalesMngOrderDTO selectOrder : orderList) {
//			System.out.println(selectOrder);
//		}
		
		model.addAttribute("orderList", orderList);
		
		return "/corpMng/salesMng-selectOrderList";
	}
	
	// 매출내역 전체 조회
	@GetMapping("/selectSalesList")
	public String selectSalesList(Model model) {
		
		List<SalesMngSalesDTO> salesList = salesMngService.selectSalesList();
		
//		for(SalesMngSalesDTO sales : salesList) {
//			System.out.println(sales);
//		}
		
		model.addAttribute("salesList", salesList);
		
		return "/corpMng/salesMng-selectSalesList";
	}
	
	// 기간별 매출내역 조회
	@PostMapping("/selectSalesListByDate")
	public String selectSalesListByDate(Model model, @ModelAttribute SalesMngSalesDTO salesMngSalesList) {
		
		List<SalesMngSalesDTO> salesList = salesMngService.selectSalesListByDate(salesMngSalesList);
		
//		for(SalesMngSalesDTO sales : salesList) {
//			System.out.println(sales);
//		}
		
		model.addAttribute("salesList", salesList);
		
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


















