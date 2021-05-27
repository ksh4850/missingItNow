package com.finalproj.missingitnow.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
}
