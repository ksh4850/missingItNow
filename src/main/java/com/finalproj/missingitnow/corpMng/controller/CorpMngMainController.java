package com.finalproj.missingitnow.corpMng.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/corpMng")
public class CorpMngMainController {
	
	@GetMapping("/main")
	public String corpMngMain() {
		return "/corpMng/corpMngMain";
	}
}
