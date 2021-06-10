package com.finalproj.missingitnow.corpMng.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.finalproj.missingitnow.corpMng.model.dto.CorpMngStatisticsDTO;
import com.finalproj.missingitnow.corpMng.model.dto.CorpUserDTO;
import com.finalproj.missingitnow.corpMng.model.service.CorpMngStatisticsService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
@RequestMapping("/statistics")
@SessionAttributes("CorpUserSession")
public class StatisticsController {
	
	private final CorpMngStatisticsService corpMngStatisticsService;

	@Autowired
	public StatisticsController(CorpMngStatisticsService corpMngStatisticsService) {
		this.corpMngStatisticsService = corpMngStatisticsService;
	}
	
	@GetMapping("/selectAllStatistics")
	public String selectAllStatistics() {
		return "/corpMng/corpMng-selectAllStatistics";
	}
	
	// 일별 매출 통계 (ajax)
	@PostMapping(value="/selectDailyStatistics", produces="application/json; charset=UTF-8")
	@ResponseBody
	public String selectDailyStatistics(Model model) {
		
		CorpUserDTO CorpUserSession = (CorpUserDTO)model.getAttribute("CorpUserSession");
		
		Gson gson = new GsonBuilder().setDateFormat("MM/dd").create();
		
		List<CorpMngStatisticsDTO> dailyStatistics = corpMngStatisticsService.selectDailyStatistics(CorpUserSession);
		
//		for(CorpMngStatisticsDTO a : dailyStatistics) {
//			System.out.println("daily : " + a);
//		}
		
		return gson.toJson(dailyStatistics);
	}
	
	// 주별 매출 통계(ajax)
	@PostMapping(value="/selectWeeklyStatistics", produces="application/json; charset=UTF-8")
	@ResponseBody
	public String selectWeeklyStatistics(Model model) {
		
		CorpUserDTO CorpUserSession = (CorpUserDTO)model.getAttribute("CorpUserSession");
		
		Gson gson = new GsonBuilder().setDateFormat("MM/dd").create();
		
		List<CorpMngStatisticsDTO> weeklyStatistics = corpMngStatisticsService.selectWeeklyStatistics(CorpUserSession);
		
//		for(CorpMngStatisticsDTO a : weeklyStatistics) {
//			System.out.println("weekly : " + a);
//		}
		
		return gson.toJson(weeklyStatistics);
	}
	
	// 월별 매출 통계(ajax)
	@PostMapping(value="/selectMonthlyStatistics", produces="application/json; charset=UTF-8")
	@ResponseBody
	public String selectMonthlyStatistics(Model model) {
		
		CorpUserDTO CorpUserSession = (CorpUserDTO)model.getAttribute("CorpUserSession");
		
		Gson gson = new GsonBuilder().setDateFormat("yy/MM").create();
		
		List<CorpMngStatisticsDTO> monthlyStatistics = corpMngStatisticsService.selectMonthlyStatistics(CorpUserSession);
		
//		for(CorpMngStatisticsDTO a : monthlyStatistics) {
//			System.out.println("monthly : " + a);
//		}
		
		return gson.toJson(monthlyStatistics);
		}
	
	// 카테고리별 매출 통계(ajax)
	@PostMapping(value="/selectCategoryStatistics", produces="application/json; charset=UTF-8")
	@ResponseBody
	public String selectCategoryStatistics(Model model) {
		
		CorpUserDTO CorpUserSession = (CorpUserDTO)model.getAttribute("CorpUserSession");
		
		Gson gson = new Gson();
		
		List<CorpMngStatisticsDTO> categoryStatistics = corpMngStatisticsService.selectCategoryStatistics(CorpUserSession);
		
//		for(CorpMngStatisticsDTO a : categoryStatistics) {
//			System.out.println("category : " + a);
//		}
		
		return gson.toJson(categoryStatistics);
	}
	
}















