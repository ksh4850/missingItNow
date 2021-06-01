package com.finalproj.missingitnow.member.model.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("member/myPageCart")
public class MyPageCartController {
	
	@GetMapping
	public String myPageCart() {
		
		return("member/myPageCart");
		
	}
	
	
}
