package com.finalproj.missingitnow.member.model.controller;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.finalproj.missingitnow.email.EmailDTO;
import com.finalproj.missingitnow.email.EmailSender;
import com.finalproj.missingitnow.member.model.dao.MemberMapper;
import com.finalproj.missingitnow.member.model.dto.PasswordFindDTO;
import com.finalproj.missingitnow.member.model.dto.PrivateMemberDTO;
import com.finalproj.missingitnow.member.model.service.MemberService;

@Controller
@RequestMapping(value="member/pwdFind", produces = "application/text; charset=utf8")
public class MyPagePasswordFindController {
		
	private final MemberService memberService;
	private EmailDTO email;
	private MemberMapper mapper;
	
	@Autowired
	public MyPagePasswordFindController(MemberService memberService, EmailDTO email, MemberMapper mapper) {
		super();
		this.memberService = memberService;
		this.email = email;
		this.mapper = mapper;
	}

	@GetMapping
	public String pwdFind() {
		
		
		return "member/pwdFind";
	}
	
	@PostMapping
	@ResponseBody
	public String sendEmail(@ModelAttribute PasswordFindDTO passwordFind, PrivateMemberDTO member, HttpServletResponse response) {
		
		String id = passwordFind.getId();
		String inputEmail = passwordFind.getEmail();
						
		member.setUserId(id);
		
		member = mapper.selectMember(member);
		
		
		String RegistEmail = member.getUserEmail();
		

		
		if(inputEmail.equals(RegistEmail)) {
			
			memberService.pwdFind(response, passwordFind, member);
		
			
		} else if (!(inputEmail.equals(RegistEmail))){
			
			return "이메일 주소가 다릅니다. \n 로그인 페이지로 이동합니다.";
			
		} 
		
		return inputEmail+"로 임시 이메일을 발급했습니다.\n로그인 페이지로 이동합니다.";
	}
	
	
	
	
}
