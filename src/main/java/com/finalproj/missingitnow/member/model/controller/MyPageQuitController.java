package com.finalproj.missingitnow.member.model.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.finalproj.missingitnow.member.model.dto.MemberDTO;
import com.finalproj.missingitnow.member.model.service.MemberService;

@Controller
@RequestMapping("member/quit")
public class MyPageQuitController {
	
	private final MemberService memberService;
	
	@Autowired
	public MyPageQuitController(MemberService memberService) {
		super();
		this.memberService = memberService;
	}
	
	
	
	@GetMapping
	public String myPageQuit() {
		
		return "member/quit";
	}
	

	@PostMapping
	public String myPageQuitProcess(@ModelAttribute MemberDTO member, HttpSession session) {
		
		memberService.userQuit(member);
		
		session.invalidate();
		
		return "redirect:/";
	}
}
