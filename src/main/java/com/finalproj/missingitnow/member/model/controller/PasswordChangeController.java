package com.finalproj.missingitnow.member.model.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.finalproj.missingitnow.member.model.dto.PasswordChangeDTO;
import com.finalproj.missingitnow.member.model.dto.PrivateMemberDTO;
import com.finalproj.missingitnow.member.model.service.MemberService;

@Controller
@RequestMapping("member/pwdChange")
public class PasswordChangeController {
	
	private final BCryptPasswordEncoder passwordEncoder;
	private final MemberService memberService;
	
	@Autowired              
	public PasswordChangeController(MemberService memberService, BCryptPasswordEncoder passwordEncoder) {
		this.passwordEncoder = passwordEncoder;
		this.memberService = memberService;
	}
	
	@GetMapping
	public String pwdChange() {
		
		return "member/pwdChange";
	}

	@PostMapping
	public String pwdChangeProcess(@ModelAttribute PasswordChangeDTO pwdChange, PrivateMemberDTO member, BCryptPasswordEncoder passwordEncoder) {
		
		/*화면에서 넘겨받은 비번 입력값의 변수 선언*/
		String checkNewPassword = pwdChange.getNewPassword();
		String checkNewPasswordRetype = pwdChange.getNewPasswordRetype();
		
		String realNewPassword ="";
		
		
		/*로그인한 회원 Id를 세션에서 추출해 변수로 받는다.*/
		
		member.setUserId(pwdChange.getUserId());
		
		
		if(checkNewPassword.equals(checkNewPasswordRetype)) {
			

			
			realNewPassword = checkNewPassword;

			member.setUserPwd(passwordEncoder.encode(realNewPassword));
			

			
			memberService.pwdChange(member);
			
		} else if(!(checkNewPassword.equals(checkNewPasswordRetype))) {
			

			
			return "redirect:/member/pwdChange";
		}
		
		
		return "redirect:/member/myPageMain";
	}
	
	
}
