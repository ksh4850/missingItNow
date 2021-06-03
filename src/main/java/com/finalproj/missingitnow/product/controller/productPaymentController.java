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



import com.finalproj.missingitnow.product.model.dto.CorpDTO;
import com.finalproj.missingitnow.product.model.dto.ProductDTO;
import com.finalproj.missingitnow.product.model.dto.ProductImgDTO;
import com.finalproj.missingitnow.product.model.dto.ReviewDTO;
import com.finalproj.missingitnow.product.model.service.ProductService;

@Controller
@RequestMapping("/productPayment/*")
public class productPaymentController {

	private final ProductService productService;
	
	@Autowired
	public productPaymentController(ProductService productService) {
		this.productService = productService;
	}
	
	@GetMapping("/payment")
	public String selectOrderDelete(Model model, @RequestParam(required=false) String prodNo) {

		List<ProductDTO> productList = productService.Product(prodNo);
	    List<ProductImgDTO> productImgList = productService.ProductImg(prodNo);
		
	   
	    
	    model.addAttribute("productList", productList);
		model.addAttribute("productImgList", productImgList);
	
		return "/product/productPayment";
	}
	
	@GetMapping("/completion")
	public String completion(Model model, @RequestParam(required=false) String prodNo) {

		List<ProductDTO> productList = productService.Product(prodNo);
	    List<ProductImgDTO> productImgList = productService.ProductImg(prodNo);
		
	    model.addAttribute("productList", productList);
		model.addAttribute("productImgList", productImgList);
		
		return "/product/productPaymentCompletion";
	}


	
	
	
}
