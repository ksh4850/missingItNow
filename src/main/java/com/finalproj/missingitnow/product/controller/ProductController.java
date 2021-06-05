package com.finalproj.missingitnow.product.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.finalproj.missingitnow.product.model.dto.CorpDTO;
import com.finalproj.missingitnow.product.model.dto.ProductDTO;
import com.finalproj.missingitnow.product.model.dto.ProductImgDTO;
import com.finalproj.missingitnow.product.model.dto.ReviewDTO;
import com.finalproj.missingitnow.product.model.service.ProductService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
@RequestMapping("/product/*")
public class ProductController {

	private final ProductService productService;

	@Autowired
	public ProductController(ProductService productService) {
		this.productService = productService;
	}

	@GetMapping("test")
	public String test(Model model, @RequestParam(required = false) String prodCtgNo) {

		List<ProductDTO> productList = productService.selectProduct(prodCtgNo);

		model.addAttribute("productList", productList);

		return "/product/product-list";
	}

	@GetMapping("product")
	public String product(Model model, @RequestParam(required = false) String prodNo,
			@RequestParam(required = false) String corpNo) {
		List<ProductDTO> productList = productService.Product(prodNo);
		List<CorpDTO> corpList = productService.corp(corpNo);
		List<ProductImgDTO> productImgList = productService.ProductImg(prodNo);
		List<ReviewDTO> reviewList = productService.review(prodNo);

		int count = 0;
		int sum = 0;

		double onePointCount = 0;
		double twoPointCount = 0;
		double threePointCount = 0;
		double fourPointCount = 0;
		double fivePointCount = 0;

		for (ReviewDTO a : reviewList) {
			sum += a.getReviewScore();

			switch (a.getReviewScore()) {
			case 5:
				fivePointCount += 1;
				break;
			case 4:
				fourPointCount += 1;
				break;
			case 3:
				threePointCount += 1;
				break;
			case 2:
				twoPointCount += 1;
				break;
			case 1:
				onePointCount += 1;
				break;
			default:
				break;
			}
			count += 1;
		}

		onePointCount = onePointCount / count * 100;
		twoPointCount = twoPointCount / count * 100;
		threePointCount = threePointCount / count * 100;
		fourPointCount = fourPointCount / count * 100;
		fivePointCount = fivePointCount / count * 100;
		sum = sum / count;

		int onePoint = (int) onePointCount;
		int twoPoint = (int) twoPointCount;
		int threePoint = (int) threePointCount;
		int fourPoint = (int) fourPointCount;
		int fivePoint = (int) fivePointCount;

		int onePointSize = 17 * onePoint / 10;
		int twoPointSize = 17 * twoPoint / 10;
		int threePointSize = 17 * threePoint / 10;
		int fourPointSize = 17 * fourPoint / 10;
		int fivePointSize = 17 * fivePoint / 10;

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

	/*
	 * @GetMapping("/insertReview") public String insertForm() {
	 * System.out.println("와지냐 여기"); return "/product/product-list"; }
	 */

	// 상품등록
	
	@PostMapping(value="/insertReview", produces ="application/json; charset=UTF-8")
	@ResponseBody public String insertProduct(Model model, HttpServletRequest request,
	@RequestParam("starValue") int starValue,@RequestParam("context") String context,@RequestParam("productNo") String productNo) {

	String userNo = "USER0002"; 
	HashMap<String, Object> insertReview = new	HashMap<String, Object>(); 
	insertReview.put("starValue", starValue);
	insertReview.put("context", context); 
	insertReview.put("productNo", productNo); 
	insertReview.put("userNo", userNo);
	
	// int reviewStar = productService.reviewStar(insertReview);
	
	List<ReviewDTO> reviewList = productService.review(productNo);
	System.out.println(reviewList); Gson gson = new
	GsonBuilder().setDateFormat("").create();
	
	
	return gson.toJson(reviewList); }
	

	@PostMapping(value = "/lowProductList", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String lowProductList(Model model, HttpServletRequest request ,
	@RequestParam("prodCtgNo") String prodCtgNo) {
		System.out.println("오나요 여기는 에초에" + prodCtgNo);
		List<ProductDTO> lowProductList = productService.selectProductLow(prodCtgNo);

		System.out.println(lowProductList);
		Gson gson = new GsonBuilder().setDateFormat("").create();

		return gson.toJson(lowProductList);
	}
	@PostMapping(value = "/highProductList", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String highProductList(Model model, HttpServletRequest request,
			@RequestParam("prodCtgNo") String prodCtgNo) {
		System.out.println("오나요 여기는 에초에" + prodCtgNo);
		List<ProductDTO> highProductList = productService.selectProductHigh(prodCtgNo);
		
		System.out.println(highProductList);
		Gson gson = new GsonBuilder().setDateFormat("").create();
		
		return gson.toJson(highProductList);
	}
	@PostMapping(value = "/productPopularity", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String productPopularity(Model model, HttpServletRequest request 
			/*@RequestParam("prodCtgNo") String prodCtgNo*/) {
		String prodCtgNo = "PRCT0001";
		System.out.println("오나요 여기는 에초에" + prodCtgNo);
		List<ProductDTO> productPopularity = productService.selectProductPopularity(prodCtgNo);
		
		System.out.println(productPopularity);
		Gson gson = new GsonBuilder().setDateFormat("").create();
		
		return gson.toJson(productPopularity);
	}
	
	@PostMapping(value = "/productPriceChoice", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String productPriceChoice(Model model, HttpServletRequest request, 
			@RequestParam("prodCtgNo") String prodCtgNo , @RequestParam("highPrice") String highPrice
			,@RequestParam("lowPrice") String lowPrice) {
		HashMap<String, Object> price = new	HashMap<String, Object>(); 
		price.put("prodCtgNo", prodCtgNo);
		price.put("highPrice", highPrice);
		price.put("lowPrice", lowPrice);
		List<ProductDTO> productPopularity = productService.selectProductPriceChoice(price);
		
		System.out.println(productPopularity);
		Gson gson = new GsonBuilder().setDateFormat("").create();
		
		return gson.toJson(productPopularity);
	}

}
