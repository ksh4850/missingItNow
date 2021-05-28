package com.finalproj.missingitnow.admin.test;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class TestController {

	@PostMapping("/test")
	public void testMethod(HttpServletRequest request, Model model) {
		
		System.out.println(request.getParameter("append"));
		
	}
	
}
