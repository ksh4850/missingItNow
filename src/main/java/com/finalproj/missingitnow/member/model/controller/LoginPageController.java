package com.finalproj.missingitnow.member.model.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	public String login(@ModelAttribute PrivateMemberDTO member, Model model
			, RedirectAttributes rttr) {
		
		int result = memberService.loginCheck(member);
		int leaveCheck = memberService.leaveCheck(member);
		

		
		if(leaveCheck==0) {
			
			if(result==1) {
								
				
				model.addAttribute("loginMember", memberService.loginMember(member));
				
				
			} else {
				
				String loginFailMessage = "로그인 실패 : 비밀번호가 다르거나 존재하지 않는 아이디입니다.";
				
				rttr.addFlashAttribute("loginFailMessage", loginFailMessage);
				
				return "redirect:/";
				
			}
		
		} else {
			
			String loginFailMessage = "로그인 실패 : 탈퇴한 회원입니다.";
			
			rttr.addFlashAttribute("loginFailMessage", loginFailMessage);
			
			return "redirect:/";
			
		}
		
				
		return "redirect:/";
	}
	
	
}
