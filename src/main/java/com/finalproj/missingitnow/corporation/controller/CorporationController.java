package com.finalproj.missingitnow.corporation.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.finalproj.missingitnow.common.exception.LoginFailedException;
import com.finalproj.missingitnow.common.exception.MemberRegistException;
import com.finalproj.missingitnow.corpMng.model.dto.CorpUserDTO;
import com.finalproj.missingitnow.corporation.model.service.CorporationService;


@Controller
@RequestMapping("/corporation")
@SessionAttributes("CorpUserSession")
public class CorporationController {
	
	/*  !! 기업회원 DTO 통합하여 CorpMng안에 있는 CorpUserDTO로 세션 통합 시킴 (MemberDTO 미사용) !! */
	
	private final CorporationService corporationService;
	private final BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	public CorporationController(CorporationService corporationService, BCryptPasswordEncoder passwordEncoder) {
		this.corporationService = corporationService;
		this.passwordEncoder = passwordEncoder;
	}
	
	@GetMapping("/test")
	public String test() {
		return "/main/test";
	}
	
	@GetMapping("/loginPage")
	public String corpMngMain() {
		return "/corporation/login";
	}
	

	@PostMapping("/login")
	public String login(@ModelAttribute CorpUserDTO member, Model model) throws LoginFailedException {
		CorpUserDTO CorpUserSession = corporationService.loginMember(member);
		
		model.addAttribute("CorpUserSession", CorpUserSession);
				
		return "redirect:/";
	}
	
	
	/* 회원가입 */
	@GetMapping("/regist")
	public void registForm() {}
	
	@PostMapping("/regist")
	public String registMember(@ModelAttribute CorpUserDTO member, HttpServletRequest request, RedirectAttributes rttr,
								@RequestParam(required=false) MultipartFile corpUserImg) throws MemberRegistException {
		
		member.setCorpPwd(passwordEncoder.encode(member.getCorpPwd()));
		
		if(!corporationService.registMember(member)) {
			throw new MemberRegistException("당신은 우리와 함께 할 수 없습니다.");
		}
		
//		rttr.addFlashAttribute("message", "회원 가입에 성공하셨습니다.");
		
		return "corporation/login";
	}
	
	@GetMapping("/mypage")
	public String login() {
	
		return "corpMng/corpMngMain";
	}
	
	/* 로그아웃 */
	@GetMapping("/logout")
	public String logout(SessionStatus status) {
		
		status.setComplete();
		
		return "redirect:/";
	}
}
