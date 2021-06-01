package com.finalproj.missingitnow.member.model.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.finalproj.missingitnow.common.exception.MemberRegistException;
import com.finalproj.missingitnow.member.model.dto.MemberDTO;
import com.finalproj.missingitnow.member.model.service.MemberService;

@Controller
@RequestMapping("member/regist")
public class RegistController {

	private final BCryptPasswordEncoder passwordEncoder;
	private final MemberService memberService;
	
	@Autowired              
	public RegistController(MemberService memberService, BCryptPasswordEncoder passwordEncoder) {
		this.passwordEncoder = passwordEncoder;
		this.memberService = memberService;
	}

	@GetMapping
	public String regist() {
		return "member/regist";
	}
	
	@PostMapping
	public String registProcess(@ModelAttribute MemberDTO member, BCryptPasswordEncoder passwordEncoder
			,RedirectAttributes rttr) {
		
		//System.out.println(member); 
		
		/* 비번 암호화 처리 */
		
		member.setUserPwd(passwordEncoder.encode(member.getUserPwd()));
		
		System.out.println("암호화 이후 : " + member); 
		
		/*userNo의 null 값 -> 시퀀스 처리 */
		
		memberService.registMember(member);
			
		
		rttr.addFlashAttribute("message", "회원 가입에 성공하셨습니다.");
		
		
		return "redirect:/";
	}
	
}
