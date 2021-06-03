package com.finalproj.missingitnow.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.support.SessionStatus;

@Controller
@RequestMapping("/*")
public class MainController {
	
	@GetMapping("/")
	public String defaultLocation() {
		return "/main/main";
	}
	
	@GetMapping("/main")
	public String main() {
		return "/main/main";
	}
	
	// 로그아웃(세션아웃)
//	@GetMapping("/logout")
//	public String logout(SessionStatus status) {
//		
//		status.setComplete();
//		
//		return "/main/main";
//	}
	
	
}
