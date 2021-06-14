package com.finalproj.missingitnow.corpMng.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.finalproj.missingitnow.common.exception.LoginFailedException;
import com.finalproj.missingitnow.common.page.PageInfoDTO;
import com.finalproj.missingitnow.common.page.Pagenation;
import com.finalproj.missingitnow.corpMng.model.dto.CorpMngNoticeDTO;
import com.finalproj.missingitnow.corpMng.model.dto.CorpUserDTO;
import com.finalproj.missingitnow.corpMng.model.dto.ProdCmtListDTO;
import com.finalproj.missingitnow.corpMng.model.dto.ProdMngProductDTO;
import com.finalproj.missingitnow.corpMng.model.dto.ProdRevListDTO;
import com.finalproj.missingitnow.corpMng.model.dto.SalesMngOrderDTO;
import com.finalproj.missingitnow.corpMng.model.service.CorpMngMainService;
import com.finalproj.missingitnow.corpMng.model.service.ProdMngService;
import com.finalproj.missingitnow.corporation.model.service.CorporationService;
import com.google.gson.Gson;

@Controller
@RequestMapping("/corpMng")
@SessionAttributes("CorpUserSession")
public class CorpMngMainController {
	
	private final CorpMngMainService corpMngMainService;
	private final ProdMngService prodMngService;
	private final BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	public CorpMngMainController(CorpMngMainService corpMngMainService, BCryptPasswordEncoder passwordEncoder, ProdMngService prodMngService) {
		this.corpMngMainService = corpMngMainService;
		this.prodMngService = prodMngService;
		this.passwordEncoder = passwordEncoder;
	}
	
	
	
	@PostMapping(value="/selectCorpUserInfoForNavi", produces="application/json; charset=UTF-8")
	@ResponseBody
	public String selectCorpUserInfoForNavi(Model model) {
		
		CorpUserDTO CorpUserSession = (CorpUserDTO)model.getAttribute("CorpUserSession");
		
		Gson gson = new Gson();
		
		CorpUserDTO corpUserInfo = corpMngMainService.selectCorpUserInfo(CorpUserSession);
//		System.out.println("CorpUserInfoForNavi : " + corpUserInfo);
		
		return gson.toJson(corpUserInfo);
	}
	
	// 메인 페이지
	@GetMapping(value={"/", "/main"})
	public String corpMngMain(Model model) {
		
		CorpUserDTO CorpUserSession = (CorpUserDTO)model.getAttribute("CorpUserSession");
		
		if(CorpUserSession == null) {
			return "redirect:/";
		}
		// 최근 공지 리스트
		List<CorpMngNoticeDTO> recentNoticeList = corpMngMainService.selectRecentNoticeList();
		
		// 판매자 정보
		CorpUserDTO corpUserInfo = corpMngMainService.selectCorpUserInfo(CorpUserSession);
		int totalCount = prodMngService.selectTotalProductList(CorpUserSession);
		int depositTotal = corpMngMainService.selectDepositTotal(CorpUserSession);
		
		// 최근 등록 상품
		List<ProdMngProductDTO> recentProductList = corpMngMainService.selectRecentProductList(CorpUserSession);
		
		// 주문
		SalesMngOrderDTO countOrderStatus = corpMngMainService.selectCountOrderStatus(CorpUserSession);
		
		// 최근 상품 문의
		List<ProdCmtListDTO> recentProductCmtList = corpMngMainService.selectRecentProductCmtList(CorpUserSession);

		// 최근 상품 리뷰
		List<ProdRevListDTO> recentProdRevList = corpMngMainService.selectRecentProductRevList(CorpUserSession);
		
		model.addAttribute("recentNoticeList", recentNoticeList);
		model.addAttribute("corpUserInfo", corpUserInfo);
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("depositTotal", depositTotal);
		model.addAttribute("recentProductList", recentProductList);
		model.addAttribute("countOrderStatus", countOrderStatus);
		model.addAttribute("recentProductCmtList", recentProductCmtList);
		model.addAttribute("recentProdRevList", recentProdRevList);
		
		return "/corpMng/corpMngMain";
	}
	
	// 정보 수정을 위한 정보 select
	@GetMapping("/updateCorpUserInfo")
	public String selectCorpUserInfo(Model model) {
		
		CorpUserDTO CorpUserSession = (CorpUserDTO)model.getAttribute("CorpUserSession");
		
		CorpUserDTO corpUserInfo = corpMngMainService.selectCorpUserInfo(CorpUserSession);
//		System.out.println("corpUserInfo :" + corpUserInfo);
		
		model.addAttribute("corpUserInfo", corpUserInfo);
		
		return "/corpMng/corpMng-updateCorpUserInfo";
	}
	
	// 기업회원 정보 수정
	@PostMapping("/updateCorpUserInfo")
	public String updateCorpUserInfo(Model model, @RequestParam("corpNo") String corpNo, HttpServletRequest request, 
									@ModelAttribute CorpUserDTO corpUser,
									@RequestParam(required=false) MultipartFile corpUserImg) {
		
		corpUser.setCorpPwd(passwordEncoder.encode(corpUser.getCorpPwd()));
		
		// 기업회원 정보 수정
		int updateCorpUserInfo = corpMngMainService.updateCorpUserInfo(corpUser);
//		System.out.println("updateCorpUserInfo : " + updateCorpUserInfo);
		
		int updateCorpUserImg = 0;
		if(!corpUserImg.isEmpty()) {
			// 기존 프로필 이미지 삭제
			int deleteCorpUserImg = corpMngMainService.deleteCorpUserImg(corpUser);
//			System.out.println("deleteCorpUserImg : " + deleteCorpUserImg);
			
			String root = request.getSession().getServletContext().getRealPath("resources");
			String filePath = root + "\\corpUserImages";
			
			File mkdir = new File(filePath);
			if(!mkdir.exists()) {
				mkdir.mkdirs();
			}
			
			String originFileName = "";
			String ext = "";
			String changeName = "";
			
			if(corpUserImg.getSize() > 0) {
				originFileName = corpUserImg.getOriginalFilename();
				ext = originFileName.substring(originFileName.lastIndexOf("."));
				changeName = UUID.randomUUID().toString().replace("-",  "") + ext;
				
				Map<String, String> file = new HashMap<>();
				file.put("originFileName", originFileName);
				file.put("changeName", changeName);
				file.put("filePath", filePath);
				file.put("corpNo", corpNo);
				
				try {
					corpUserImg.transferTo(new File(filePath + "\\" + changeName));
					
					updateCorpUserImg = corpMngMainService.updateCorpUserImg(file);
				} catch (IOException e) {
					e.printStackTrace();
					new File(filePath + "\\" + changeName + ext).delete();
				}
			}
		}
//		System.out.println("updateCorpUserImg : " + updateCorpUserImg);
		
		if (updateCorpUserInfo > 0 || updateCorpUserImg > 0) {
			model.addAttribute("successCode", "updateCorpUserInfo");
			return "/common/success";
			
		} else {
			model.addAttribute("failedCode", "updateCorpUserInfo");
			return "/common/failed";
		}
		
	}
	
	// 기업회원 공지사항 List
	@GetMapping("/noticeList")
	public String selectNoticeList(Model model, @RequestParam(required=false) String currentPage) {
		
		int pageNo = 1;
		
		if(currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.valueOf(currentPage);
			if(pageNo <= 0) {
				pageNo = 1;
			}
		}
		
		int totalCount = corpMngMainService.selectTotalNoticeList();
		System.out.println("totalCount : " + totalCount);
		
		int limit = 15;
		int buttonAmount = 5;
		
		PageInfoDTO pageInfo = Pagenation.getPageInfo(pageNo, totalCount, limit, buttonAmount);
		
		List<CorpMngNoticeDTO> noticeList = corpMngMainService.selectNoticeList(pageInfo);
//		for(CorpMngNoticeDTO a : noticeList) {
//			System.out.println("noticeList : " + a );
//		}
		
		model.addAttribute("noticeList", noticeList);
		model.addAttribute("pageInfo", pageInfo);
		
		return "/corpMng/corpMng-noticeList";
	}
	
	
	
	
	
}















