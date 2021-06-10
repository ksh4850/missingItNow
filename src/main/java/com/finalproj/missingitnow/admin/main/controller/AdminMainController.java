package com.finalproj.missingitnow.admin.main.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.finalproj.missingitnow.admin.main.model.service.AdminMainService;

@Controller
@RequestMapping("/admin")
public class AdminMainController {

	private final AdminMainService mainService;
	
	@Autowired
	public AdminMainController(AdminMainService mainService) {
		
		this.mainService = mainService;
		
	}
	
	@GetMapping("/main")
	public String adminMainPage(Model model) {
		
		Map<String, Integer> dataMap = mainService.selectMainPageDatas();
		
		model.addAttribute("datas", dataMap);
		
		return "admin/main/adminMain";
		
	}
	
}
