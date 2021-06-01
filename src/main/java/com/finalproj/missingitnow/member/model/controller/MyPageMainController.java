package com.finalproj.missingitnow.member.model.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.finalproj.missingitnow.member.model.dto.MemberDTO;
import com.finalproj.missingitnow.member.model.service.MemberService;

@Controller
@RequestMapping("member/myPageMain")
public class MyPageMainController {
	
	private final MemberService memberService;
	
	@Autowired
	public MyPageMainController(MemberService memberService) {
		this.memberService = memberService;
	}
	
	@GetMapping
	public String myPageMain() {
		
		return "member/myPageMain";
	}
	
	
	@PostMapping
	public String myPageModify(@ModelAttribute MemberDTO member, HttpSession session) {
		
		System.out.println("modify");
		
		memberService.userUpdate(member);
		
		//session.invalidate();
		
		return "redirect:/login";
	}
	
}
