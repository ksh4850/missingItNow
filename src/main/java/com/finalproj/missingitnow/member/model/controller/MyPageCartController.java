package com.finalproj.missingitnow.member.model.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.finalproj.missingitnow.member.model.service.MemberService;

@Controller
@RequestMapping("member/myPageCart")
public class MyPageCartController {
	
	private final MemberService memberService;
		
	public MyPageCartController(MemberService memberService) {
		super();
		this.memberService = memberService;
	}
	
	
	@GetMapping
	public String myPageCart() {
		
		return("member/myPageCart");
		
	}
	
	
}
