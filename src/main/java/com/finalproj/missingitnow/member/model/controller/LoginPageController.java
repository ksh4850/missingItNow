package com.finalproj.missingitnow.member.model.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.finalproj.missingitnow.common.exception.LoginFailedException;
import com.finalproj.missingitnow.member.model.dto.PrivateMemberDTO;
import com.finalproj.missingitnow.member.model.service.MemberService;

@Controller
@SessionAttributes("loginMember")
@RequestMapping("/login")
public class LoginPageController {
	
	private final MemberService memberService;
	
	@Autowired
	public LoginPageController(MemberService memberService) {
		this.memberService = memberService;
	}
	
	
	@GetMapping
	public String login() {
		
		return "member/login";
	}
	
	@PostMapping("memlogin")
	public String login(@ModelAttribute PrivateMemberDTO member, Model model) throws LoginFailedException {
		
		
		
		model.addAttribute("loginMember", memberService.loginMember(member));
		
				
		return "redirect:/";
	}
	
	
}
