package com.finalproj.missingitnow.product.controller;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.finalproj.missingitnow.product.model.dto.CommentDTO;
import com.finalproj.missingitnow.product.model.dto.CorpDTO;
import com.finalproj.missingitnow.product.model.dto.ProductDTO;
import com.finalproj.missingitnow.product.model.dto.ProductImgDTO;
import com.finalproj.missingitnow.product.model.dto.ReviewDTO;
import com.finalproj.missingitnow.product.model.service.ProductService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
@RequestMapping("/productPayment/*")
public class productPaymentController {

	private final ProductService productService;
	
	@Autowired
	public productPaymentController(ProductService productService) {
		this.productService = productService;
	}
	
//	@GetMapping("/payment")
//	public String selectOrderDelete(Model model, @RequestParam(required=false) String prodNo) {
//
//		List<ProductDTO> productList = productService.Product(prodNo);
//	    List<ProductImgDTO> productImgList = productService.ProductImg(prodNo);
//		
//	    
//	    model.addAttribute("productList", productList);
//		model.addAttribute("productImgList", productImgList);
//	
//		return "/product/productPayment";
//	}
//	
//	@PostMapping("/completioninster")
//	@ResponseBody public String insertProduct(Model model, @RequestParam("userNo") String userNo, @RequestParam("prodNo") String prodNo) {
//		System.out.println("제발 와주세요");
//		List<ProductDTO> productList = productService.Product(prodNo);
//		ProductDTO product = (ProductDTO) productList;
//		
//		HashMap<String, Object> OrderList = new HashMap<String, Object>(); 
//		OrderList.put("corpNo", product.getCorpNo()); 
//		OrderList.put("prodNo", prodNo); 
//		OrderList.put("userNo", userNo); 
//		OrderList.put("orderPrice", product.getProdPrice()); 
//		OrderList.put("dealingStatus", "상품준비중"); 
//		OrderList.put("orderStatus", "Y"); 
//		OrderList.put("orderOuantity", 1); 
//		OrderList.put("orderDate", "SYSDATE"); 
//		System.out.println("걍 여길 못오네");
//		System.out.println(OrderList);
//		
//		String completioninster = "결재 완료";
//		  	
//		return "/product/productPaymentCompletion"; 
//	}
//	
//	@GetMapping("/completion")
//	public String completion(Model model, @RequestParam(required=false) String prodNo) {
//
//		
//		 List<ProductDTO> productList = productService.Product(prodNo); 
//
//		 System.out.println(productList+" 좋");
//		 
//		 List<ProductImgDTO> productImgList = productService.ProductImg(prodNo);
//		 model.addAttribute("productList", productList);
//		 model.addAttribute("productImgList", productImgList);
//		
//		return "/product/productPaymentCompletion";
//		/*
//		 * return "/product/productPaymentCompletion";
//		 */	}


	
	
	
}
