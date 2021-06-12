package com.finalproj.missingitnow.member.model.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.finalproj.missingitnow.member.model.dto.PrivateMemberDTO;
import com.finalproj.missingitnow.member.model.service.MemberService;

@Controller
@RequestMapping("/member/check/*")
public class IdCheckController {
	
	
	private final MemberService memberService;
	
	@Autowired              
	public IdCheckController(MemberService memberService) {
		
		this.memberService = memberService;
	}
	
	
	
	@PostMapping
	@RequestMapping("/member/check/idCheck")
	@ResponseBody
	public int idCheck(@RequestParam(value="userId") String userId, @ModelAttribute PrivateMemberDTO member) {
		
		System.out.println(userId);
		
		member.setUserId(userId);
		
		System.out.println(memberService.loginCheck(member));
		
		return memberService.loginCheck(member);
	}
	
}
