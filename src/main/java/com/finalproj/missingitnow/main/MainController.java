package com.finalproj.missingitnow.main;

import java.util.ArrayList;
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

	@PostMapping(value = "/ketSearch", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String ketSearch(Model model, HttpServletRequest request, @RequestParam("search") String search) {
		List<ProductDTO> ketSearchList = new ArrayList<ProductDTO>();
		
		int ketTrue = 0;
		int count = 0;
		int one = 0;
		int listconut = 0;

		List<ProductDTO> ketSearch = productService.selectketSearch();
		for (ProductDTO list : ketSearch) { // 리스트 많큼 돌려라
			if (listconut == 5) { // 리스트 5개 차면 그만
				break;
			}
			for (int a = 0; a < search.length(); a++) { // 가져올 글자수 많큼 돌려라
				for (int i = 0; i < list.getProdName().length(); i++) { // 리스트 안에있는 물건 이름 글자수 많큼 돌려라

					if (search.length() == 1) { // 친 글자가 하나일 경우
						if (list.getProdName().charAt(i) == search.charAt(a)) {
							ProductDTO product = new ProductDTO();
							product.setProdName(list.getProdName());
							product.setProdImgRename(list.getProdImgRename());
							product.setProdNo(list.getProdNo());
							product.setCorpNo(list.getCorpNo());
							ketSearchList.add(product);
							listconut += 1;
						}
					} else if (search.length() != 1) { // 친글자가 두개 이상일 경우

						if (list.getProdName().charAt(i) == search.charAt(a)) { // 글자 비교
							if (one == 0) { // 글자 비교 두개이상해야해서 첫번째는 비교를 원할하게 하기위해
								ketTrue += 1;
								one = 2;
								count = i;
							} else if (one == 2) { // 글자 비교 두개이상해야해서 첫번째는 비교를 원할하게 하기위해
								if (i == (count + 1)) { // 글자 비교할때 2개 이상 값들이 붙어 있는지 확인작업
									ketTrue += 1;
									count = i;
								}
							}
						}
						if (ketTrue == search.length()) {
							ProductDTO product = new ProductDTO();
							product.setProdImgRename(list.getProdImgRename());
							product.setProdName(list.getProdName());
							product.setProdNo(list.getProdNo());
							product.setCorpNo(list.getCorpNo());
							ketSearchList.add(product);
							listconut += 1;
							ketTrue = 0;
							one = 0;
						}
					}
				}
			}
		}
		if (ketSearchList.size() == 0) {
			ProductDTO product = new ProductDTO();
			product.setProdName("검색결과가 없습니다");
			ketSearchList.add(product);
		}
		Gson gson = new GsonBuilder().setDateFormat("").create();
		return gson.toJson(ketSearchList);
	}

}
