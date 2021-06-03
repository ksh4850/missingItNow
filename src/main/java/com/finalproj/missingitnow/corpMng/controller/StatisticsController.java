package com.finalproj.missingitnow.corpMng.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.finalproj.missingitnow.corpMng.model.dto.CorpMngStatisticsDTO;
import com.finalproj.missingitnow.corpMng.model.service.CorpMngStatisticsService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
@RequestMapping("/statistics")
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
	public String selectDailyStatistics() {
		
		Gson gson = new GsonBuilder().setDateFormat("MM/dd").create();
		
		List<CorpMngStatisticsDTO> dailyStatistics = corpMngStatisticsService.selectDailyStatistics();
		
//		for(CorpMngStatisticsDTO a : dailyStatistics) {
//			System.out.println(a);
//		}
		
		return gson.toJson(dailyStatistics);
	}
	
	// 주별 매출 통계(ajax)
	@PostMapping(value="/selectWeeklyStatistics", produces="application/json; charset=UTF-8")
	@ResponseBody
	public String selectWeeklyStatistics() {
		
		Gson gson = new GsonBuilder().setDateFormat("MM/dd").create();
		
		List<CorpMngStatisticsDTO> weeklyStatistics = corpMngStatisticsService.selectWeeklyStatistics();
		
//		for(CorpMngStatisticsDTO a : weeklyStatistics) {
//			System.out.println(a);
//		}
		
		return gson.toJson(weeklyStatistics);
	}
	
}















