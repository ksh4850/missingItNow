package com.finalproj.missingitnow.member.model.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.finalproj.missingitnow.member.model.dto.CartDTO;
import com.finalproj.missingitnow.member.model.dto.PrivateMemberDTO;
import com.finalproj.missingitnow.member.model.service.CartService;

@Controller
@ResponseBody 
@RequestMapping("/member/deleteCart")
public class DeleteCartController {
	
	private final CartService cartService;

	@Autowired
	public DeleteCartController(CartService cartService) {
		super();
		this.cartService = cartService;
	}
	
	@PostMapping
	public int deleteCart(@RequestParam(value="chk[]") List<String> chkArr, CartDTO cart, PrivateMemberDTO member, HttpSession session) {
		
		member = (PrivateMemberDTO) session.getAttribute("loginMember");
		
		String userNo = member.getUserNo();
		
		int result = 0;
		
		String wishListNo = "";
		
		
		if(member!=null) {
			
			cart.setUserNo(userNo);
			
			for(String i : chkArr) {
				
				wishListNo = i;
				cart.setWishListNo(wishListNo);
				
				cartService.deleteCart(cart);
			}
			result = 1;
		}
		
		return result;
		
	}
}
