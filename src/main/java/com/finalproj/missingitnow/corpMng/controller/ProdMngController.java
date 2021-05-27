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
	public String selectProduct(Model model) {
		
		List<ProdMngProductDTO> productList = prodMngService.selectProductList();
		for(ProdMngProductDTO a : productList) {
			System.out.println(a);
		}
		model.addAttribute("productList", productList);
		
		return "/corpMng/prodMng-selectProduct";
	}
	
	
	// 카테고리별 등록 상품 조회
	@PostMapping("/selectProductByCtg")
	public String selectProductByCtg(Model model, @RequestParam(required=false) String prodCtgNo) {
		
//		System.out.println(prodCtgNo);
		
		List<ProdMngProductDTO> productList = prodMngService.selectProductByCtg(prodCtgNo);
//		for(ProdMngProductDTO ListByCtg : productList) {
//			System.out.println("ListByCtg : " + ListByCtg);
//		}
		model.addAttribute("productList", productList);
		
		return "/corpMng/prodMng-selectProduct";
	}
	
	
	// 상품명별 등록 상품 조회 
	@PostMapping("/selectProductByProdName")
	public String selectProductByName(Model model, @RequestParam(required=false) String prodName) {
		
		List<ProdMngProductDTO> productList = prodMngService.selectProductByName(prodName);
//		for(ProdMngProductDTO ListByProdName : productList) {
//			System.out.println("ListByProdName : " + ListByProdName);
//		}
		model.addAttribute("productList", productList);
		
		return "prodMng-selectProduct";
	}

	@GetMapping("/insertProduct")
	public String insertForm() {
		return "/corpMng/prodMng-insertProduct";
	}
	
	
	// 상품등록 
	@PostMapping("/insertProduct")
	public String insertProduct(Model model, HttpServletRequest request, 
								@ModelAttribute ProdMngProductDTO prodMngProduct,
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
				
				insertProdImg = prodMngService.insertProdImg(file);
			}
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
			for(int i = 0 ; i < prodImg.size(); i++) {
				Map<String, String> file = files.get(i);
				new File(filePath + "/" + file.get("changeName")).delete();
			}
		}
		
		if(insertProductInfo > 0 && insertProdImg > 0) {
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
