package com.finalproj.missingitnow.corpMng.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
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

import com.finalproj.missingitnow.corpMng.model.dto.CorpUserDTO;
import com.finalproj.missingitnow.corpMng.model.service.CorpMngMainService;
import com.google.gson.Gson;

@Controller
@RequestMapping("/corpMng")
@SessionAttributes("CorpUserSession")
public class CorpMngMainController {
	
	private final CorpMngMainService corpMngMainService;
	private final BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	public CorpMngMainController(CorpMngMainService corpMngMainService, BCryptPasswordEncoder passwordEncoder) {
		this.corpMngMainService = corpMngMainService;
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
	
	@GetMapping("/main")
	public String corpMngMain() {
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
			System.out.println("deleteCorpUserImg : " + deleteCorpUserImg);
			
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
	public String selectNoticeList(Model model) {
		
		return "/corpMng/corpMng-noticeList";
	}
	
	
	
	
	
}















