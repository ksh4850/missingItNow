package com.finalproj.missingitnow.corpMng.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.finalproj.missingitnow.common.page.PageInfoDTO;
import com.finalproj.missingitnow.common.page.Pagenation;
import com.finalproj.missingitnow.corpMng.model.dto.ProdMngProductDTO;
import com.finalproj.missingitnow.corpMng.model.service.ProdMngService;


@Controller
@RequestMapping("/prodMng")
public class ProdMngController {

	private final ProdMngService prodMngService;
	
	@Autowired
	public ProdMngController(ProdMngService prodMngService) {
		this.prodMngService = prodMngService;
	}

	// 전체 상품 조회 (해당 기업이 등록한) ** 세션 작업 아직 안함 **
	@GetMapping("/selectProduct")
	public String selectProduct(Model model, @RequestParam(required=false) String currentPage) {
		
		int pageNo = 1;
		
		if(currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.valueOf(currentPage);
			if(pageNo <= 0) {
				pageNo = 1;
			}
		}
		
		int totalCount = prodMngService.selectTotalProductList();
		System.out.println("totalCount : " + totalCount);
		int limit = 15;
		int buttonAmount = 5;
		
		PageInfoDTO pageInfo = Pagenation.getPageInfo(pageNo, totalCount, limit, buttonAmount);
		
		List<ProdMngProductDTO> productList = prodMngService.selectProductList(pageInfo);
//		for(ProdMngProductDTO a : productList) {
//			System.out.println(a);
//		}
		model.addAttribute("productList", productList);
		model.addAttribute("pageInfo", pageInfo);
		
		return "/corpMng/prodMng-selectProduct";
	}
	
	// 카테고리별/상품별 등록 상품 조회
	@GetMapping("/searchProductList")
	public String searchProductList(Model model, @RequestParam(required=false) String prodCtgNo,
									@RequestParam(required=false) String prodName,
									@RequestParam(required=false) String currentPage) {
		
		System.out.println("prodCtgNo : " + prodCtgNo);
		System.out.println("prodName : " + prodName);
		
		int pageNo = 1;
		
		if(currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.valueOf(currentPage);
			if(pageNo <= 0) {
				pageNo = 1;
			}
		}
		
		Map<String, Object> params = new HashMap<>();
		params.put("prodCtgNo", prodCtgNo);
		params.put("prodName", prodName);
		
		int totalCount = prodMngService.searchTotalProductList(params);
		System.out.println("totalCount : " + totalCount);
		
		int limit = 15;
		int buttonAmount = 5;

		PageInfoDTO pageInfo = Pagenation.getPageInfo(pageNo, totalCount, limit, buttonAmount);
//		System.out.println(prodCtgNo);
		
		params.put("pageInfo", pageInfo);
		
		List<ProdMngProductDTO> productList = prodMngService.searchProductList(params);
//		for(ProdMngProductDTO searchList : productList) {
//			System.out.println("searchList : " + searchList);
//		}
		
//		System.out.println("params.prodName : " + params.get("prodName"));
//		System.out.println("params.prodCtgNo : " + params.get("prodCtgNo"));
		
		model.addAttribute("productList", productList);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("params", params);
		
		return "/corpMng/prodMng-selectProduct";
	}		// 카테고리별/상품별 등록 상품 조회 종료
	

	@GetMapping("/insertProduct")
	public String insertForm() {
		return "/corpMng/prodMng-insertProduct";
	}
	
	
	// 상품등록 
	@PostMapping("/insertProduct")
	public String insertProduct(Model model, HttpServletRequest request, 
								@ModelAttribute ProdMngProductDTO prodMngProduct,
								@RequestParam List<String> keywordsSet,
								@RequestParam(required=false) List<MultipartFile> prodImg) {
		
		// 상품 정보 insert
		int insertProductInfo = prodMngService.insertProductInfo(prodMngProduct);
		
		// 상품 이미지 insert
		String root = request.getSession().getServletContext().getRealPath("resources");
//		System.out.println(root);
		String filePath = root + "/uploadFiles";
		
		File mkdir = new File(filePath);
		if(!mkdir.exists()) {
			mkdir.mkdirs();
		}
		
		List<Map<String, String>> files = new ArrayList<>();
		for(int i = 0 ; i < prodImg.size() ; i++) {
			String originFileName = prodImg.get(i).getOriginalFilename(); 
			String ext = originFileName.substring(originFileName.lastIndexOf("."));
			String changeName = UUID.randomUUID().toString().replace("-", "") + ext;
			
			Map<String, String> file = new HashMap<>();
			file.put("originFileName", originFileName);
			file.put("changeName", changeName);
			file.put("filePath", filePath);
			files.add(file);
		}
		
		int insertProdImg = 0;
		try {
			for(int i = 0 ; i < prodImg.size() ; i++) {
				Map<String, String> file = files.get(i);
				prodImg.get(i).transferTo(new File(filePath + "/" + file.get("changeName")));
				
				insertProdImg += prodMngService.insertProdImg(file);
			}
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
			for(int i = 0 ; i < prodImg.size(); i++) {
				Map<String, String> file = files.get(i);
				new File(filePath + "/" + file.get("changeName")).delete();
			}
		}
		
		// 해당 상품 키워드 등록
		int insertKeywords = 0;
		for(int i = 0; i < keywordsSet.size(); i++) {
			String keywords = keywordsSet.get(i);
			
			Map<String, String> key = new HashMap<>();
			key.put("keywords", keywords);
			
			System.out.println("String keywords : " + keywords);
			System.out.println("Map key.get : " + key.get("keywords"));
			
			if(!keywords.equals("")) {
				insertKeywords += prodMngService.insertKeywords(key);
			} else {
				break;
			}
		}
		
		System.out.println("insertKeywords : " + insertKeywords);
		
		if(insertProductInfo > 0 && insertProdImg >= 1 && insertKeywords >= 1) {
			model.addAttribute("successCode", "insertProduct");
			return "/common/success";
			
		} else {
			model.addAttribute("failedCode", "insertProduct");
			return "/common/failed";
		}
		
	}	// insertProduct 종료
	
	
	// 수정을 위한 해당 상품번호에 대한 정보 조회
	@GetMapping("/updateProduct/{prodNo}")
	public String updateProductForm(Model model, @PathVariable("prodNo") String prodNo,
									@ModelAttribute ProdMngProductDTO prodMngProduct) {
		
		List<ProdMngProductDTO> productList = prodMngService.selectProductForUpdate(prodNo);
		for(ProdMngProductDTO ListForUpdate : productList) {
			System.out.println("ListForUpdate : " + ListForUpdate);
		}
		model.addAttribute("productList", productList);
		
		return "/corpMng/prodMng-updateProduct";
	}
	
	// 상품별 정보 수정
	@PostMapping("/updateProduct")
	public String updateProduct(Model model, @RequestParam("prodNo") String prodNo, HttpServletRequest request, 
								@ModelAttribute ProdMngProductDTO prodMngProduct,
								@RequestParam(required=false) List<MultipartFile> prodImg) {
		
		// 상품 정보 update
		int updateProductInfo = prodMngService.updateProductInfo(prodMngProduct);
		System.out.println("updateProductInfo : " + updateProductInfo);
		
		// 기존 상품 이미지 delete
		int deleteProdImg = prodMngService.deleteProdImg(prodMngProduct);
		System.out.println("deleteProdImg : " + deleteProdImg);
		
		// 상품 이미지 insert
		String root = request.getSession().getServletContext().getRealPath("resources");
//		System.out.println(root);
		String filePath = root + "/uploadFiles";
		
		File mkdir = new File(filePath);
		if(!mkdir.exists()) {
			mkdir.mkdirs();
		}
		
		List<Map<String, String>> files = new ArrayList<>();
		for(int i = 0 ; i < prodImg.size() ; i++) {
			String originFileName = prodImg.get(i).getOriginalFilename(); 
			String ext = originFileName.substring(originFileName.lastIndexOf("."));
			String changeName = UUID.randomUUID().toString().replace("-", "") + ext;
			
			Map<String, String> file = new HashMap<>();
			file.put("originFileName", originFileName);
			file.put("changeName", changeName);
			file.put("filePath", filePath);
			file.put("prodNo", prodNo);
			files.add(file);
		}
		
		System.out.println(files);
		
		int updateProdImg = 0;
		try {
			for(int i = 0 ; i < prodImg.size() ; i++) {
				Map<String, String> file = files.get(i);
				prodImg.get(i).transferTo(new File(filePath + "/" + file.get("changeName")));
				
				updateProdImg = prodMngService.updateProdImg(file);
			}
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
			for(int i = 0 ; i < prodImg.size(); i++) {
				Map<String, String> file = files.get(i);
				new File(filePath + "/" + file.get("changeName")).delete();
			}
		}
		
		System.out.println("updateProdImg : " + updateProdImg);
		
		if (updateProductInfo > 0 && updateProdImg > 0) {
			model.addAttribute("successCode", "updateProduct");
			return "/common/success";
			
		} else {
			model.addAttribute("failedCode", "updateProduct");
			return "/common/failed";
		}
		
	}
	
	
	
}
