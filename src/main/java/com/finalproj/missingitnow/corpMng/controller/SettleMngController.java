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

import com.finalproj.missingitnow.corpMng.model.dto.SettleMngSettlementDTO;
import com.finalproj.missingitnow.corpMng.model.service.SettleMngService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
@RequestMapping("/settleMng")
public class SettleMngController {
	
	private final SettleMngService settleMngService;
	
	@Autowired
	public SettleMngController(SettleMngService settleMngservice) {
		this.settleMngService = settleMngservice;
	}
	
	// 전체 정산 내역 조회
	@GetMapping("/selectSettlementList")
	public String selectSettlementList(Model model) {
		
		List<SettleMngSettlementDTO> settlementList = settleMngService.selectSettlementList();
		
//		for(SettleMngSettlementDTO A : settlementList) {
//			System.out.println(A);
//		}
		
		model.addAttribute("settlementList", settlementList);
		
		return "/corpMng/settleMng-settlementNList";
	}
	
	// 정산 요청하기
	@PostMapping("/insertSettlement")
	public String insertSettlement(Model model, @ModelAttribute SettleMngSettlementDTO settleMngSettlement) {
		
		int insertSettlement = settleMngService.insertSettlement(settleMngSettlement);
		
		if(insertSettlement > 0) {
			model.addAttribute("successCode", "insertSettlement");
			return "/common/success";
		} else {
			model.addAttribute("failedCode", "insertSettlement");
			return "/common/failed";
		}
	}
	
	// 마지막 정산 날짜 확인 (ajax)
	@PostMapping(value="/chkLastEndDate", produces="application/json; charset=UTF-8")
	@ResponseBody
	public String chkLastEndDate() {
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		
		SettleMngSettlementDTO chkLastEndDate = settleMngService.chkLastEndDate();
//		System.out.println(chkLastEndDate);
		
		return gson.toJson(chkLastEndDate);
		
	}
	
	
	
	
}


















