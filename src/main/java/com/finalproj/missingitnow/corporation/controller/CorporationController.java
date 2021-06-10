package com.finalproj.missingitnow.corporation.controller;


import java.util.List;

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
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.finalproj.missingitnow.common.exception.LoginFailedException;
import com.finalproj.missingitnow.common.exception.MemberRegistException;
import com.finalproj.missingitnow.corpMng.model.dto.CorpUserDTO;
import com.finalproj.missingitnow.corporation.model.service.CorporationService;
import com.finalproj.missingitnow.product.model.dto.ProductDTO;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Controller
@RequestMapping("/corporation")
@SessionAttributes("CorpUserSession")
public class CorporationController {
	
	/*  !! 기업회원 DTO 통합하여 CorpMng안에 있는 CorpUserDTO로 세션 통합 시킴 (MemberDTO 미사용) !! */
	
	private final CorporationService corporationService;
	private final BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	public CorporationController(CorporationService corporationService, BCryptPasswordEncoder passwordEncoder) {
		this.corporationService = corporationService;
		this.passwordEncoder = passwordEncoder;
	}
	
	@GetMapping("/test")
	public String test() {
		return "/main/test";
	}
	
	@GetMapping("/loginPage")
	public String corpMngMain() {
		return "/corporation/login";
	}
	

	@PostMapping("/login")
	public String login(@ModelAttribute CorpUserDTO member, Model model) throws LoginFailedException {
		CorpUserDTO CorpUserSession = corporationService.loginMember(member);
		
		model.addAttribute("CorpUserSession", CorpUserSession);
				
		return "redirect:/";
	}
	
	
	/* 회원가입 */
	@GetMapping("/regist")
	public void registForm() {}
	
	@PostMapping("/regist")
	public String registMember(@ModelAttribute CorpUserDTO member, HttpServletRequest request, RedirectAttributes rttr,
								@RequestParam(required=false) MultipartFile corpUserImg) throws MemberRegistException {
		
		member.setCorpPwd(passwordEncoder.encode(member.getCorpPwd()));
		
		if(!corporationService.registMember(member)) {
			throw new MemberRegistException("당신은 우리와 함께 할 수 없습니다.");
		}
		
//		rttr.addFlashAttribute("message", "회원 가입에 성공하셨습니다.");
		
		return "corporation/login";
	}
	
	@GetMapping("/mypage")
	public String login() {
	
		return "corpMng/corpMngMain";
	}
	
	/* 로그아웃 */
	@GetMapping("/logout")
	public String logout(SessionStatus status) {
		
		status.setComplete();
		
		return "redirect:/";
	}
	
	/* 아이디 중복 체크 */
	@PostMapping(value = "/idCheck", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String idCheck(Model model, HttpServletRequest request, @RequestParam("idText") String idText) {
		System.out.println("와주세요 제발요 ㅠㅠ" + idText);
		String idCheckText = "";
		
		if(idText.length() > 5) {
			List<CorpUserDTO> idCheck = corporationService.idCheck();
			for(CorpUserDTO list : idCheck) {
				if(!(list.getCorpId().equals(idText))) {
					idCheckText	= "사용 가능한 아이디 입니다";
				}
				if(list.getCorpId().equals(idText)) {
					idCheckText	= "사용 불가한 아이디 입니다";
					break;
				}
			}
		} else if(idText.length() == 0) {
			idCheckText	= "";
		} else {
			idCheckText	= "최소 6자 이상 써야합니다";
		}
		Gson gson = new GsonBuilder().setDateFormat("").create();
		
		return gson.toJson(idCheckText);
	}
	
	/* 비밀번호 중복 체크 */
	@PostMapping(value = "/passwordCheck", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String passwordCheck(Model model, HttpServletRequest request, 
			@RequestParam("passwordText2") String passwordText2,@RequestParam("passwordText") String passwordText) {
		String passwordCheck = "";
		
		if(passwordText2.length() == 0){
			passwordCheck = "";
		} else if(passwordText.equals(passwordText2)){
			passwordCheck  = "비밀번호가 일치 합니다";
			
		} else {
			passwordCheck  = "비밀번호가 틀려요 ㅠㅠ";
		}
		Gson gson = new GsonBuilder().setDateFormat("").create();
		
		return gson.toJson(passwordCheck);
	}
	
	/* 비밀번호 정규화 하나 안하나 지켜보기 ㅋ */
	@PostMapping(value = "/passworRegularExpression", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String passworRegularExpression(Model model, HttpServletRequest request, 
			@RequestParam("password") String password,@RequestParam("id") String id) {
		String passworRegularExpression = "";
		Matcher matcher;
		int MIN = 8;
	    int MAX = 20;
		String REGEX = "^((?=.*\\d)(?=.*[a-zA-Z])(?=.*[\\W]).{" + MIN + "," + MAX + "})$";
		String SAMEPT = "(\\w)\\1\\1";
		String BLANKPT = "(\\s)";
		String tmpPw = password.toUpperCase();
	    int strLen = tmpPw.length();
		
		
		do {
			if (password == null || "".equals(password)) {
				passworRegularExpression = "";
				break;
			}
			if(id.equals("")) {
				passworRegularExpression = "아이디부터 입력해주해주세요";
				break;
			} else if(password.equals("2_2_2")) {
				passworRegularExpression = "아이디부터 중복체크해주세요";
				break;
			}
			matcher = Pattern.compile(BLANKPT).matcher(tmpPw);
			if(matcher.find()) {
				passworRegularExpression = "공백을 없애주세요";
				break;
			}
			
			if(password.equals(id)) {
				passworRegularExpression = "아이디랑 비밀번호가 동일합니다 다시 작성해 주세요";
				break;
			}
			matcher = Pattern.compile(REGEX).matcher(tmpPw);
		    if (!matcher.find()) {
		    	passworRegularExpression = "영어, 숫자, 특수문자 포함 해서 작성해 주세요";
				break;
		    }
		    matcher = Pattern.compile(SAMEPT).matcher(tmpPw);
		    if (matcher.find()) {
		    	passworRegularExpression = "동일한 문자 3개 이상 들어가 있습니다 / 다시 작성해 주세요";
				break;
		    } 
		    if(!(password.length() >= 8 && password.length() <= 20)) {
				passworRegularExpression = "8~20 이내로 작성해 주세요";
				break;
			}
		    passworRegularExpression = "사용 가능한 비밀번호 입니다";
		} while (false);
		System.out.println(passworRegularExpression);
		Gson gson = new GsonBuilder().setDateFormat("").create();
		
		return gson.toJson(passworRegularExpression);
	}
}
