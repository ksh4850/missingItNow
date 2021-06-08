package com.finalproj.missingitnow.main;

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
import org.springframework.web.bind.support.SessionStatus;

import com.finalproj.missingitnow.product.model.dto.ProductDTO;
import com.finalproj.missingitnow.product.model.service.ProductService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;


@Controller
@RequestMapping("/*")
public class MainController {
	
	private final ProductService productService;

	@Autowired
	public MainController(ProductService productService) {
		this.productService = productService;
	}
	
	@GetMapping("/")
	public String defaultLocation(Model model) {
		return "/main/temp";
	}
	
	@GetMapping("/main")
	public String main() {
		return "/main/main";
	}
	/* 전체 */
	@PostMapping(value = "/mainBtn0", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String mainBtn0(Model model, HttpServletRequest request) {
		
		List<ProductDTO> allproductTotSix = productService.allproductTotSix();
		
		Gson gson = new GsonBuilder().setDateFormat("").create();
		
		return gson.toJson(allproductTotSix);
	}
	
	@PostMapping(value = "/mainBtn2", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String mainBtn2(Model model, HttpServletRequest request) {
		
		List<ProductDTO> selectProduct0001 = productService.selectProduct0001();
		System.out.println(selectProduct0001);
		Gson gson = new GsonBuilder().setDateFormat("").create();
		
		return gson.toJson(selectProduct0001);
	}
	
	@PostMapping(value = "/mainBtn3", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String mainBtn3(Model model, HttpServletRequest request) {
		
		List<ProductDTO> selectProduct0002 = productService.selectProduct0002();
		System.out.println(selectProduct0002);
		Gson gson = new GsonBuilder().setDateFormat("").create();
		
		return gson.toJson(selectProduct0002);
	}
	
	@PostMapping(value = "/mainBtn4", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String mainBtn4(Model model, HttpServletRequest request) {
		
		List<ProductDTO> selectProduct0002 = productService.selectProduct0003();
		System.out.println(selectProduct0002);
		Gson gson = new GsonBuilder().setDateFormat("").create();
		
		return gson.toJson(selectProduct0002);
	}
	
	@PostMapping(value = "/mainBtn5", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String mainBtn5(Model model, HttpServletRequest request) {
		
		List<ProductDTO> selectProduct0002 = productService.selectProduct0004();
		System.out.println(selectProduct0002);
		Gson gson = new GsonBuilder().setDateFormat("").create();
		
		return gson.toJson(selectProduct0002);
	}
	
	@PostMapping(value = "/mainBtn6", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String mainBtn6(Model model, HttpServletRequest request) {
		
		List<ProductDTO> selectProduct0002 = productService.selectProduct0005();
		System.out.println(selectProduct0002);
		Gson gson = new GsonBuilder().setDateFormat("").create();
		
		return gson.toJson(selectProduct0002);
	}
	
	@PostMapping(value = "/mainBtn7", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String mainBtn7(Model model, HttpServletRequest request) {
		
		List<ProductDTO> selectProduct0002 = productService.selectProduct0006();
		System.out.println(selectProduct0002);
		Gson gson = new GsonBuilder().setDateFormat("").create();
		
		return gson.toJson(selectProduct0002);
	}
	
	@PostMapping(value = "/mainBtn8", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String mainBtn8(Model model, HttpServletRequest request) {
		
		List<ProductDTO> selectProduct0002 = productService.selectProduct0007();
		System.out.println(selectProduct0002);
		Gson gson = new GsonBuilder().setDateFormat("").create();
		
		return gson.toJson(selectProduct0002);
	}
	
	@PostMapping(value = "/mainBtn9", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String mainBtn9(Model model, HttpServletRequest request) {
		
		List<ProductDTO> selectProduct0002 = productService.selectProduct0008();
		System.out.println(selectProduct0002);
		Gson gson = new GsonBuilder().setDateFormat("").create();
		
		return gson.toJson(selectProduct0002);
	}
	
	@PostMapping(value = "/mainBtn10", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String mainBtn10(Model model, HttpServletRequest request) {
		
		List<ProductDTO> selectProduct0002 = productService.selectProduct0009();
		System.out.println(selectProduct0002);
		Gson gson = new GsonBuilder().setDateFormat("").create();
		
		return gson.toJson(selectProduct0002);
	}
	
	@PostMapping(value = "/mainBtn11", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String mainBtn11(Model model, HttpServletRequest request) {
		
		List<ProductDTO> selectProduct0002 = productService.selectProduct0010();
		System.out.println(selectProduct0002);
		Gson gson = new GsonBuilder().setDateFormat("").create();
		
		return gson.toJson(selectProduct0002);
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
