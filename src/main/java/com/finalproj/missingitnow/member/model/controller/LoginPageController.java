package com.finalproj.missingitnow.member.model.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.finalproj.missingitnow.common.exception.LoginFailedException;
import com.finalproj.missingitnow.member.model.dto.MemberDTO;
import com.finalproj.missingitnow.member.model.service.MemberService;

@Controller
@RequestMapping("/login")
public class LoginPageController {
	
	private final MemberService memberService;
	private final BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	public LoginPageController(MemberService memberService, BCryptPasswordEncoder passwordEncoder) {
		this.memberService = memberService;
		this.passwordEncoder = passwordEncoder;
	}
	
	
	@GetMapping
	public String login() {
		
		return "member/login";
	}
	
	@PostMapping("memlogin")
	public String login(@ModelAttribute MemberDTO member, Model model, HttpSession session) throws LoginFailedException {
		
		
		
		//입력된 정보 확인 
		//System.out.println(member.toString());
		
		
		//model.addAttribute("loginMember", memberService.loginMember(member));
		
		//System.out.println("컨트롤러 테스트" + memberService.loginMember(member));
		
		
		session.setAttribute("loginMember", memberService.loginMember(member));
		
		
		return "redirect:/";
	}
	
	
}
