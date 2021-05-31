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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;



import com.finalproj.missingitnow.product.model.dto.CorpDTO;
import com.finalproj.missingitnow.product.model.dto.ProductDTO;
import com.finalproj.missingitnow.product.model.dto.ProductImgDTO;
import com.finalproj.missingitnow.product.model.dto.ReviewDTO;
import com.finalproj.missingitnow.product.model.service.ProductService;

@Controller
@RequestMapping("/product/*")
public class ProductController {

	private final ProductService productService;
	
	@Autowired
	public ProductController(ProductService productService) {
		this.productService = productService;
	}
	
   @GetMapping("test")
   public String test(Model model, @RequestParam(required=false) String prodCtgNo) {

	   List<ProductDTO> productList = productService.selectProduct(prodCtgNo);
	   List<ProductDTO> highProductList = productService.selectProductHigh(prodCtgNo);
	   List<ProductDTO> lowProductList = productService.selectProductLow(prodCtgNo);
	   List<ProductDTO> productPopularity = productService.selectProductPopularity(prodCtgNo);
	   
		model.addAttribute("productList", productList);
		model.addAttribute("highProductList", highProductList);
		model.addAttribute("lowProductList", lowProductList);
		model.addAttribute("productPopularity", productPopularity);
		
      return "/product/product-list";
   } 
   
    @GetMapping("product")
    public String product(Model model, @RequestParam(required=false) String prodNo, @RequestParam(required=false) String corpNo) {
    List<ProductDTO> productList = productService.Product(prodNo);
    List<CorpDTO> corpList = productService.corp(corpNo);
    List<ProductImgDTO> productImgList = productService.ProductImg(prodNo);
    List<ReviewDTO> reviewList = productService.review(prodNo);
    System.out.println(prodNo);
    int count = 0;
    int sum = 0;
    
    double onePointCount = 0;
    double twoPointCount = 0;
    double threePointCount = 0;
    double fourPointCount = 0;
    double fivePointCount = 0;
    
    for(ReviewDTO a : reviewList) {
    	sum += a.getReviewScore();
    	
    	switch (a.getReviewScore()) {
		case 5: fivePointCount += 1; break;
		case 4: fourPointCount += 1; break;
		case 3: threePointCount += 1; break;
		case 2: twoPointCount += 1; break;
		case 1: onePointCount += 1; break;
		default: break;
		}
    	count += 1;
    }

    onePointCount = onePointCount/count *100;
    twoPointCount = twoPointCount/count *100;
    threePointCount = threePointCount/count *100;
    fourPointCount = fourPointCount/count *100;
    fivePointCount = fivePointCount/count *100;
    sum = sum / count;
    
    int onePoint = (int)onePointCount;
    int twoPoint = (int)twoPointCount;
    int threePoint = (int)threePointCount;
    int fourPoint = (int)fourPointCount;
    int fivePoint = (int)fivePointCount;
    
    int onePointSize = 17*onePoint/10;
    int twoPointSize = 17*twoPoint/10;
    int threePointSize = 17*threePoint/10;
    int fourPointSize = 17*fourPoint/10;
    int fivePointSize = 17*fivePoint/10;
 
    
    
    model.addAttribute("productList", productList);
	model.addAttribute("corpList", corpList);
	model.addAttribute("productImgList", productImgList);
	model.addAttribute("reviewList", reviewList);
	model.addAttribute("onePoint", onePoint);
	model.addAttribute("twoPoint", twoPoint);
	model.addAttribute("threePoint", threePoint);
	model.addAttribute("fourPoint", fourPoint);
	model.addAttribute("fivePoint", fivePoint);
	model.addAttribute("onePointSize", onePointSize);
	model.addAttribute("twoPointSize", twoPointSize);
	model.addAttribute("threePointSize", threePointSize);
	model.addAttribute("fourPointSize", fourPointSize);
	model.addAttribute("fivePointSize", fivePointSize);
	model.addAttribute("average", sum);
	model.addAttribute("count", count);

    return "/product/product";
    }
    
    @GetMapping("/insertReview")
	public String insertForm() {
		return "/product/product-list";
	}
	
	// 상품등록 
	@PostMapping("/insertReview")
	public String insertProduct(Model model, HttpServletRequest request, @RequestParam(required=false) String reviewDetails, @RequestParam(required=false) String stars) {
		
		String userNo = "USER0002";
		
		String reviewStar = productService.reviewStar(null);
		
		return "/product/product-list";
	}	
	
	
	
}
