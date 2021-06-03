package com.finalproj.missingitnow.system.controller;

import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.finalproj.missingitnow.common.page.Pagenation;
import com.finalproj.missingitnow.system.model.dto.CorpPageDTO;
import com.finalproj.missingitnow.system.model.dto.CorpSellPageDTO;
import com.finalproj.missingitnow.system.model.dto.DepositPageDTO;
import com.finalproj.missingitnow.system.model.dto.OrderPageDTO;
import com.finalproj.missingitnow.system.model.dto.SCorpDTO;
import com.finalproj.missingitnow.system.model.service.SystemService;
import com.google.gson.GsonBuilder;


@Controller
@RequestMapping("/system/*")
public class SystemController {
	
	private final SystemService systemService;
	
	@Autowired
	public SystemController(SystemService systemService) {
		this.systemService = systemService;
	}
	
	@GetMapping("comInfo")
	public String getComInfo(Model model , @ModelAttribute CorpPageDTO corpPage ) {
//		System.out.println(corpPage.getCorpLv());
//		System.out.println(corpPage.getCorpSearchText());
//		System.out.println(corpPage.getCurrentPage());
//		System.out.println(corpPage.getCorpCondition());
		
		int pageNo = 1;
		
		if(corpPage.getCurrentPage() != 0) {
			pageNo = corpPage.getCurrentPage();
			
			if(pageNo <= 0) {
				pageNo = 1;
			}
		}
		
		
		
		int totalCount = systemService.selectCorpTotalCount(corpPage);
		
		int limit = 10;
	
		int buttonAmount = 5;
		
		
		corpPage.setPageInfo(Pagenation.getPageInfo(pageNo, totalCount, limit, buttonAmount));
		
//		System.out.println("corpPage : " + corpPage);

		
		model.addAttribute("corpList", systemService.selectSystemCorp(corpPage));
		model.addAttribute("corpPage", corpPage);
		
		return "system/comInfo";
	}
	
	
	@GetMapping(value="regstAccpet" , produces="application/json; charset=UTF-8")
	@ResponseBody
	public String getModifyRegstAccpet(@ModelAttribute CorpPageDTO corpPage , @RequestParam String corpNo) {
		
//		System.out.println(corpPage.getCorpLv());
//		System.out.println(corpPage.getCorpSearchText());
//		System.out.println(corpPage.getCorpCondition());
//		System.out.println(corpNo);
		
		int result = systemService.modifyRegstAccpet(corpNo);
		
		List<SCorpDTO> corpList = null;
		
		if(result > 0 ) {
			
			corpList = systemService.selectAjaxSystemCorp(corpPage);
			
		}
		

//		System.out.println(corpList);
	
		String gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create().toJson(corpList);
		
		
		
		return gson;
		
	}
	

	
	@GetMapping("depositInfo")
	public String getSelectDepositInfo(Model model , @ModelAttribute DepositPageDTO depositPage) {
		
//		System.out.println(depositPage.getDepositCondition());
//		System.out.println(depositPage.getDepositSearchText());
//		System.out.println(depositPage.getDepositSort());
//		System.out.println(depositPage.getCurrentPage());
//		System.out.println(depositPage.getStartDate());
//		System.out.println(depositPage.getEndDate());
		
		if(depositPage.getStartDate() == null ) {
			
			Calendar calender = Calendar.getInstance();
			calender.add(Calendar.DAY_OF_MONTH,-14);
			
			String newStartDate = new java.text.SimpleDateFormat("yyyy-MM-dd").format(calender.getTime());
			
			depositPage.setStartDate(newStartDate);
			
		}
		
		if(depositPage.getEndDate() == null ) {
			
			Calendar calender = Calendar.getInstance();
			
			
			String newendDate = new java.text.SimpleDateFormat("yyyy-MM-dd").format(calender.getTime());
			
			depositPage.setEndDate(newendDate);
			
		}
		
		
		int pageNo = 1;
		
		if(depositPage.getCurrentPage() != 0) {
			pageNo = depositPage.getCurrentPage();
			
			if(pageNo <= 0) {
				pageNo = 1;
			}
		}
		
		
		int totalCount = systemService.selectDepositCount(depositPage);
		
		
		
		int limit = 10;
		
		int buttonAmount = 5;
		
		
		depositPage.setPageInfo(Pagenation.getPageInfo(pageNo, totalCount, limit, buttonAmount));

		System.out.println(depositPage);
		
		
		model.addAttribute("depositList", systemService.selectSystemDepositList(depositPage));
		model.addAttribute("depositPage", depositPage);
		
		
		return "system/deposit";
	}
	
	@GetMapping("orderInfo" )
	public String getSelectOrderInfo(Model model, @ModelAttribute OrderPageDTO orderPage) {
		
//		System.out.println(orderPage.getStartDate());
//		System.out.println(orderPage.getEndDate());
//		System.out.println(orderPage.getDealingStatus());
//		System.out.println(orderPage.getCategory());
//		System.out.println(orderPage.getCondition());
//		System.out.println(orderPage.getOrderInfoText());
//		System.out.println(orderPage.getCurrentPage());
		
		
		if(orderPage.getStartDate() == null ) {
			
			Calendar calender = Calendar.getInstance();
			calender.add(Calendar.DAY_OF_MONTH,-14);
			
			String newStartDate = new java.text.SimpleDateFormat("yyyy-MM-dd").format(calender.getTime());
			
			orderPage.setStartDate(newStartDate);
			
		}
		
		if(orderPage.getEndDate() == null ) {
			
			Calendar calender = Calendar.getInstance();
			
			
			String newendDate = new java.text.SimpleDateFormat("yyyy-MM-dd").format(calender.getTime());
			
			orderPage.setEndDate(newendDate);
			
		}
			

		
		int pageNo = 1;
		
		if(orderPage.getCurrentPage() != 0) {
			pageNo = orderPage.getCurrentPage();
			
			if(pageNo <= 0) {
				pageNo = 1;
			}
		}
		
		int totalCount = systemService.selectOrderInfoCount(orderPage);
		
		int limit = 10;
		
		int buttonAmount = 5;
		
		
		orderPage.setPageInfo(Pagenation.getPageInfo(pageNo, totalCount, limit, buttonAmount));

//		System.out.println(orderPage);
		
	
		model.addAttribute("orderList", systemService.selectSystemOrderInfo(orderPage));
		model.addAttribute("orderPage", orderPage);
		
		
		
		
		
		return "system/orderInfo";
	}
	
	@GetMapping(value="corpSalesInfo" , produces="application/json; charset=UTF-8")
	public String getSelectCorpSalesInfo(Model model , @ModelAttribute CorpSellPageDTO corpSellPage ) {
		
//		System.out.println(corpSellPage.getStartDate());
//		System.out.println(corpSellPage.getEndDate());
//		System.out.println(corpSellPage.getCondition());
//		System.out.println(corpSellPage.getCorpSellText());
		
		
		if(corpSellPage.getStartDate() == null ) {
			
			Calendar calender = Calendar.getInstance();
			calender.add(Calendar.DAY_OF_MONTH,-6);
			
			String newStartDate = new java.text.SimpleDateFormat("yyyy-MM-dd").format(calender.getTime());
			
			corpSellPage.setStartDate(newStartDate);
			
		}
		
		if(corpSellPage.getEndDate() == null ) {
			
			Calendar calender = Calendar.getInstance();
			
			
			String newendDate = new java.text.SimpleDateFormat("yyyy-MM-dd").format(calender.getTime());
			
			corpSellPage.setEndDate(newendDate);
			
		}
		
		
		int todaySalse =  systemService.selectTodaySalse(corpSellPage);
		
//		System.out.println(todaySalse);
		
		int oneMonthSalse = systemService.selectOneMonthSalse(corpSellPage);
		
//		System.out.println(oneMonthSalse);
		
		
		List<Map<String , String>> daySalseInfo = systemService.selectDaySalseInfo(corpSellPage);
		
		
//		System.out.println(daySalseInfo);
		
		List<Map<String, Object>> productTopInfo = systemService.selectProductTopInfo(corpSellPage);
		
		int ptopSize = 5 - productTopInfo.size() ;
		
		Map<String ,Object> addMap =  null;
		
		if(ptopSize > 0 ) {
			for(int i =0; i < ptopSize ; i++) {
				 addMap =new HashMap<>();
				 addMap.put("productName", "");
				 addMap.put("productCount", 0);
				 
				 productTopInfo.add(addMap);
			}
		}
		
		
//		System.out.println(productTopInfo);
		
		List<Map<String,Object>> categoryTopInfo = systemService.selectCategoryInfo(corpSellPage);
		
		
		int ctopSize = 5 - categoryTopInfo.size() ;

				if(ctopSize > 0 ) {
					for(int i =0; i < ctopSize ; i++) {
						 addMap =new HashMap<>();
						 addMap.put("categoryName", "");
						 addMap.put("categoryCount", 0);
						 
						 categoryTopInfo.add(addMap);
					}
				}
		
		
//		System.out.println("인초"+categoryTopInfo );
		
		Map<String ,Object> map = new HashMap<>();
		
		map.put("daySalseInfo", daySalseInfo);
		map.put("productTopInfo", productTopInfo);
		map.put("categoryTopInfo", categoryTopInfo);
		
		 String selseJson = new GsonBuilder().setDateFormat("yyyy-MM-dd").setPrettyPrinting().create().toJson(map);
		
//		 System.out.println(selseJson); 
		
		model.addAttribute("todaySalse",todaySalse);
		model.addAttribute("oneMonthSalse",oneMonthSalse);
		model.addAttribute("daySalseInfo",daySalseInfo);
		model.addAttribute("productTopInfo",productTopInfo);
		model.addAttribute("categoryTopInfo",categoryTopInfo);
		model.addAttribute("selseJson",selseJson);
		model.addAttribute("corpSellPage",corpSellPage);
		
		return "system/corpSalesInfo";
	}
	
	
	
	@GetMapping(value="ajaxSalseInfo" , produces="application/json; charset=UTF-8")
	@ResponseBody
	public String getAjaxSalseInfo(@ModelAttribute CorpSellPageDTO corpSellPage) {
		
		System.out.println(corpSellPage.getStartDate());
		System.out.println(corpSellPage.getEndDate());
		System.out.println(corpSellPage.getCondition());
		System.out.println(corpSellPage.getCorpSellText());
		
		
       List<Map<String , String>> daySalseInfo = systemService.selectAjaxDaySalseInfo(corpSellPage);
		
		
//		System.out.println(daySalseInfo);
		
		List<Map<String, Object>> productTopInfo = systemService.selectAjaxProductTopInfo(corpSellPage);
		
		int ptopSize = 5 - productTopInfo.size() ;
		
		Map<String ,Object> addMap =  null;
		
		if(ptopSize > 0 ) {
			for(int i =0; i < ptopSize ; i++) {
				 addMap =new HashMap<>();
				 addMap.put("productName", "");
				 addMap.put("productCount", 0);
				 
				 productTopInfo.add(addMap);
			}
		}
		
		
//		System.out.println(productTopInfo);
		
		List<Map<String,Object>> categoryTopInfo = systemService.selectAjaxCategoryInfo(corpSellPage);
		
		
		int ctopSize = 5 - categoryTopInfo.size() ;

				if(ctopSize > 0 ) {
					for(int i =0; i < ctopSize ; i++) {
						 addMap =new HashMap<>();
						 addMap.put("categoryName", "");
						 addMap.put("categoryCount", 0);
						 
						 categoryTopInfo.add(addMap);
					}
				}
		
		
//		System.out.println("인초"+categoryTopInfo );
		
		Map<String ,Object> map = new HashMap<>();
		
		map.put("daySalseInfo", daySalseInfo);
		map.put("productTopInfo", productTopInfo);
		map.put("categoryTopInfo", categoryTopInfo);
		
		String selseJson = new GsonBuilder().setDateFormat("yyyy-MM-dd").setPrettyPrinting().create().toJson(map);
		System.out.println(selseJson);
		
		return selseJson;
	}

	
	
	
	

}
