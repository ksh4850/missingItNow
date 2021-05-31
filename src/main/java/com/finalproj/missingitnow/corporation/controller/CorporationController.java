package com.finalproj.missingitnow.corporation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.finalproj.missingitnow.common.exception.LoginFailedException;
import com.finalproj.missingitnow.corporation.model.service.CorporationService;
import com.finalproj.missingitnow.product.model.dto.CorpDTO;

@Controller
@RequestMapping("/controller")
public class CorporationController {
	
	private final CorporationService corporationService;
	private final BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	public CorporationController(CorporationService corporationService, BCryptPasswordEncoder passwordEncoder) {
		this.corporationService = corporationService;
		this.passwordEncoder = passwordEncoder;
	}
	
	@GetMapping("/loginPage")
	public String corpMngMain() {
		return "/corporation/login";
	}
	
	@GetMapping("/regist")
	public String regist() {
		return "/corporation/regist";
	}
	
	@GetMapping("/login")
	public String login() {
		return "/main/main";
	}
	
	@PostMapping("/login")
	public String login(@ModelAttribute CorpDTO member, Model model) throws LoginFailedException {
			
		model.addAttribute("loginMember", ((CorporationService) passwordEncoder).loginMember(member));
				
		return "main/main";
	}
}
