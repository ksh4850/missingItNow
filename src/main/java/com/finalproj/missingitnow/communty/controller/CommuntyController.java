package com.finalproj.missingitnow.communty.controller;

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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.finalproj.missingitnow.common.page.PageInfoDTO;
import com.finalproj.missingitnow.common.page.Pagenation;
import com.finalproj.missingitnow.communty.model.dto.SPCommentDTO;
import com.finalproj.missingitnow.communty.model.dto.SPReCommentDTO;
import com.finalproj.missingitnow.communty.model.dto.SPostDTO;
import com.finalproj.missingitnow.communty.model.dto.SPostImgDTO;
import com.finalproj.missingitnow.communty.model.dto.SPostListDTO;
import com.finalproj.missingitnow.communty.model.service.CommuntyService;
import com.finalproj.missingitnow.member.model.dto.PrivateMemberDTO;
import com.google.gson.GsonBuilder;

@Controller
@RequestMapping("/communty/*")
public class CommuntyController {
	
	private final CommuntyService communtyService;
	
	@Autowired
	public CommuntyController(CommuntyService communtyService) {
		this.communtyService = communtyService;
	}
	
	
	@GetMapping("communtyRegist")
	public String getCommuntyRegist() {
		return "communty/communtyRegist";
	}
	
	/*커뮤니티 등록*/
	@PostMapping("communtyRegist")
	public String postCommuntyRegist(@ModelAttribute SPostDTO post  ,Model model ,@RequestParam String reName  , @RequestParam String originName ,HttpServletRequest request) {
		
//		System.out.println(post.getHousingType());
//		System.out.println(post.getAcreage());
//		System.out.println(post.getResidenceType());
//		System.out.println(post.getCost());
//		System.out.println(post.getPostDetail());
//		System.out.println(reName);
//		System.out.println(originName);
		
		String[] reNames= reName.split(",");
		String[] originNames= originName.split(",");
		
		String filePath = request.getSession().getServletContext().getRealPath("resources") + "\\uploadFiles";
		
		List<SPostImgDTO> imgList =  new ArrayList<>();
		
		for(int i = 0 ; i < reNames.length ; i++) {
			SPostImgDTO img = new SPostImgDTO();
			img.setOriginName(originNames[i]);
			img.setReName(reNames[i]);
			img.setPath(filePath);
			img.setThnbName("추가예정");
			
			imgList.add(img);
			
			
			
			
		}
		
		
		
		PrivateMemberDTO user =	 (PrivateMemberDTO)request.getSession().getAttribute("loginMember");
	 
	 	System.out.println("user" + user);
		
//		post.setUser(user);
		
		post.setPostDate(new java.sql.Timestamp(System.currentTimeMillis()));
		
		int postResult = 0;
		
		
		postResult = communtyService.insertCommuntyRegist(post , imgList);
		
		
		
	
		model.addAttribute("post",post);
		
		
		return "redirect:communtyList";
		
	}
	
	/*커뮤니티 ajax파일 업로드*/
	@PostMapping(value="imgUpload" , produces ="application/json; charset=UTF-8")
	@ResponseBody
	public String uploadFiles(List<MultipartFile> uploadFiles ,HttpServletRequest request) throws IOException {
		
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		

		
		String filePath = root + "\\uploadFiles";
		
		File mkdir = new File(filePath);
		if(!mkdir.exists()) {
			mkdir.mkdirs();
		}
		List<Map<String, String>> files = new ArrayList<>();
		for(int i = 0 ; i < uploadFiles.size() ; i++) {
			
			String originFileName = uploadFiles.get(i).getOriginalFilename();
			String ext = originFileName.substring(originFileName.lastIndexOf("."));
			String reName = UUID.randomUUID().toString().replace("-", "") + ext;
			
			
			Map<String, String> file = new HashMap<>();
			file.put("originFileName", originFileName);
			file.put("reName", reName);
			file.put("filePath", filePath);
			
			files.add(file);
		}
		
		
		
		
		try {
			for(int i = 0 ; i < uploadFiles.size() ; i++) {
				Map<String, String> file = files.get(i);

				uploadFiles.get(i).transferTo(new File(filePath + "\\" + file.get("reName")));
			}
			
			
			
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
			
			
			for(int i = 0 ; i < uploadFiles.size(); i++) {
				Map<String, String> file = files.get(i);
				
				new File(filePath + "\\" + file.get("reName")).delete();
			
			}
		}
		
		 
		String  gson = new GsonBuilder().create().toJson(files);
		
//		System.out.println(gson);
		
		return gson;

	}
	
	/*커뮤니티 ajax파일 업로드한 파일 삭제*/
	@GetMapping(value="ajaxDelete" , produces ="text/plain; charset=UTF-8")
	@ResponseBody
	public String getAjaxImgDelete(@RequestParam String reName , HttpServletRequest request ) {
		
		
		String deleteName = reName.substring(reName.lastIndexOf("/"));
		
//		System.out.println(reName);
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		String filePath = root + "\\uploadFiles";
		
//		System.out.println(filePath);
		
		new File(filePath + "\\" + deleteName).delete();
		
		return "삭제완료";
	}
	
	/*커뮤니티 리스트 조회*/
	@GetMapping("communtyList")
	public String getCommuntyList(Model model , HttpServletRequest request) {
		
		
		PrivateMemberDTO user =	 (PrivateMemberDTO)request.getSession().getAttribute("loginMember");
		

		List<SPostListDTO> postList = communtyService.selectPostList();
		
	
		
		if(user != null) {
			for(int i = 0 ; i < postList.size()  ;i ++) {
				SPostListDTO post = postList.get(i);
				
				Map<String ,String> map = new HashMap<>();
				map.put("postNo", post.getPostNo());
				map.put("userNo", user.userNo);
				post.setLikeStatus(communtyService.selectLikeStatus(map));
				
			}
		}
		
		
		 
		
		model.addAttribute("postList", postList);
		
		return "communty/communtyList";
	}
	
	/*스크롤 페이징 처리 ajax 커뮤니티 리스트 조회*/
	@GetMapping(value="ajaxCommuntyList" , produces="application/json; charset=UTF-8")
	@ResponseBody
	public String getAjaxCommuntyList(@RequestParam int pageNo , HttpServletRequest request) {
		
//		System.out.println("pageNo"+pageNo);
		
		int startNum = (pageNo - 1 ) * 3 + 1;
		int endNum = pageNo * 3;
		
		Map<String , Integer> map = new HashMap(); 
		
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		
		List<SPostListDTO> postList = communtyService.selectAajxPostList(map);
		
		PrivateMemberDTO user =	 (PrivateMemberDTO)request.getSession().getAttribute("loginMember");
		
		if(user != null) {
			for(int i = 0 ; i < postList.size()  ;i ++) {
				SPostListDTO post = postList.get(i);
				
				Map<String ,String> maps = new HashMap<>();
				maps.put("postNo", post.getPostNo());
				maps.put("userNo", user.userNo);
				post.setLikeStatus(communtyService.selectLikeStatus(maps));
				
			}
		}
		
		
//		 for(SPostListDTO post : postList) { System.out.println(post); }
		 
		 String gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create().toJson(postList);
		 
		return gson;
		
	}
	
	/*커뮤니티 디테일 조회*/
	@GetMapping("communtyDetail")
	public String getCoommuntyDetail(Model model , @RequestParam String postNo ,@RequestParam(defaultValue = "0") int currentPage , HttpServletRequest request) {
		
		int pageNo = 1;
		
		if(currentPage != 0) {
			pageNo = currentPage;
			
			if(pageNo <= 0) {
				pageNo = 1;
			}
		}
		
		int totalCount = communtyService.ajaxCommentTotalCount(postNo);
		
		int limit = 10;
	
		int buttonAmount = 5;
		
		
		PageInfoDTO page = Pagenation.getPageInfo(pageNo, totalCount, limit, buttonAmount);
		
		Map<String ,Object> map = new HashMap<>();
		
		map.put("postNo", postNo);
		map.put("page", page );
		
//		System.out.println(postNo);
		
		SPostDTO post = communtyService.selectCommunryDetail(map);
		
		PrivateMemberDTO user =	 (PrivateMemberDTO)request.getSession().getAttribute("loginMember");
		
		
		if(user != null) {
			
				
				Map<String ,String> maps = new HashMap<>();
				maps.put("postNo", post.getPostNo());
				maps.put("userNo", user.userNo);
				post.setLikeStatus(communtyService.selectLikeStatus(maps));
				
			
		}
		
		
		model.addAttribute("post", post);
		model.addAttribute("page", page);
		
	
		
		return "communty/communtyDetail";
	}
	
	/*커뮤니티 댓글 등록 ajax*/
	@GetMapping(value="ajaxcommentRegist", produces="text/plain; charset=UTF-8")
	@ResponseBody
	public String getAjaxCommentRegist(@RequestParam String postNo , @RequestParam String commentText ,HttpServletRequest request) {

		
	
		
		PrivateMemberDTO user =	 (PrivateMemberDTO)request.getSession().getAttribute("loginMember");
	 	SPCommentDTO comment = new SPCommentDTO();
	 	comment.setUser(user);
	 	comment.setComtDate(new java.sql.Timestamp(System.currentTimeMillis()));
	 	comment.setPost( new SPostDTO());
	 	comment.getPost().setPostNo(postNo);
	 	comment.setComtDetail(commentText);
		
		 int result = communtyService.insertAjaxCommentRegist(comment); 
		 
		 String gson = result +"";
		 
//		 if(result >  0) {
//			 List<SPCommentDTO> post = communtyService.selectAjaxCommunryDetail(postNo);
//				/* System.out.println(post); */
//			 gson =  new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create().toJson(post);
//		 }
		 
		 
	 	
		return gson;
		
	}
	/*커뮤니티 대댓글 등록 ajax*/
	@GetMapping(value="ajaxresponseRegist", produces="application/json; charset=UTF-8")
	@ResponseBody
	public String getAjaxResponseRegist(@RequestParam String comtNo , @RequestParam String reposeRegistText , @RequestParam String postNo ,HttpServletRequest request) {
		
		PrivateMemberDTO user =	 (PrivateMemberDTO)request.getSession().getAttribute("loginMember");
		SPReCommentDTO recomment = new SPReCommentDTO();
		recomment.setUser(user);
		recomment.setReComtDate(new java.sql.Timestamp(System.currentTimeMillis()));
		recomment.setComment(new SPCommentDTO());
		recomment.getComment().setComtNo(comtNo);
		recomment.setReComtDetail(reposeRegistText);
		
		int result = communtyService.insetAjaxResponseCommentRegist(recomment);
		
		String gson = result + "";
		 

		
		
		
		
		return gson;
	}
	/*커뮤니티 댓글 삭제 ajax*/
	@GetMapping(value="ajaxcommentDelete" ,produces="application/json; charset=UTF-8")
	@ResponseBody
	public String getAjaxCommentDelete(@RequestParam String comtNo , @RequestParam String postNo ) {
		
		int result = communtyService.deleteAjaxComment(comtNo);
		
//		System.out.println(result);
		
		String gson = result + "";
		 
		 
		 
		return gson;
	}
	
	
	
	/*커뮤니티 대댓글 삭제 ajax*/
	@GetMapping(value="ajaxresponseDelete" ,produces="application/json; charset=UTF-8")
	@ResponseBody
	public String getAjaxResponseDelete(@RequestParam String reComtNo , @RequestParam String postNo ) {
		
		int result = communtyService.deleteAjaxResponse(reComtNo);
		
		
		String gson = result + "";
		 
		
		 
		return gson;
	
	}
	
	/*커뮤니티 댓글 수정 ajax*/
	@GetMapping(value="ajaxcommentModify" ,produces="application/json; charset=UTF-8")
	@ResponseBody
	public String getAjaxCommentModify(@RequestParam String comtNo , @RequestParam String postNo ,  @RequestParam String commentText ) {
		

		
		SPCommentDTO comment = new SPCommentDTO();
		comment.setComtDetail(commentText);
		comment.setComtNo(comtNo);
		
		
		
		int result = communtyService.modifyAjaxCommentDetail(comment);
		
		
		String gson = result + "";
		 

		return gson;
	
	}
	
	
	/*커뮤니티 대댓글 수정 ajax*/
	@GetMapping(value="ajaxresponseModify" ,produces="application/json; charset=UTF-8")
	@ResponseBody
	public String getAjaxResponseModify(@RequestParam String reComtNo , @RequestParam String postNo ,  @RequestParam String commentText ) {
		
		
		SPReCommentDTO recomment = new SPReCommentDTO();
		recomment.setReComtDetail(commentText);
		recomment.setReComtNo(reComtNo);
		
		
		int result = communtyService.modifyAjaxResponsetDetail(recomment);
		
		
		String gson = result + "";
	
		 
		return gson;
	
	}
	/*커뮤니티 종아요 수정 ajax*/
	@GetMapping(value="ajaxLikeModify" ,produces="text/plain; charset=UTF-8")
	@ResponseBody
	public String getAjaxLikeStatusModify(@RequestParam String likeStatus , @RequestParam String postNo , HttpServletRequest request) {
		
		
//		System.out.println(likeStatus);
		
		if(likeStatus.equals("Y")) {
			likeStatus = "N";
		}else {
			likeStatus = "Y";
		}
		
		PrivateMemberDTO user =	 (PrivateMemberDTO)request.getSession().getAttribute("loginMember");
		
		Map<String ,String > map = new HashMap<>();
		map.put("likeStatus", likeStatus);
		map.put("userNo", user.getUserNo());
		map.put("postNo", postNo);
		
		int result = communtyService.modifyLikeStatus(map);
		
		String like = "";
		
		if(result > 0) {
			like = communtyService.selectAjaxLike(postNo) + "";
					
		}
		
		 
		return like;
	
	}
	
	/*커뮤니티 종하요 등록 ajax*/
	@GetMapping(value="ajaxLikeinsert" ,produces="text/plain; charset=UTF-8")
	@ResponseBody
	public String getAjaxLikeStatusInsert(  @RequestParam String postNo , HttpServletRequest request) {
		
		
		
		PrivateMemberDTO user =	 (PrivateMemberDTO)request.getSession().getAttribute("loginMember");
		
		String like = "";
		
			Map<String ,String > map = new HashMap<>();
			
			map.put("userNo", user.getUserNo());
			map.put("postNo", postNo);
			
			int result = communtyService.insertLikeStatus(map);
			
			
			
			if(result > 0) {
				like = communtyService.selectAjaxLike(postNo) + "";
						
			}
		
		 
		return like;
	
	}
	
	/*커뮤니티 댓글수  조회 ajax*/
	@GetMapping(value="ajaxCommentCount" ,produces="text/plain; charset=UTF-8")
	@ResponseBody
	public String getAjaxCommentCount(  @RequestParam String postNo ) {
		
		
		String CommentCount =  communtyService.selectAjaxCommentCount(postNo) + "";
		
		 
		return CommentCount;
	
	}
	
	
	@GetMapping(value="ajaxCommentPage" ,produces="application/json;  charset=UTF-8")
	@ResponseBody
	public String getAjaxCommentPage  ( @RequestParam(defaultValue = "0") int currentPage , @RequestParam String postNo) {
		
		
		
		int pageNo = 1;
		
		if(currentPage != 0) {
			pageNo = currentPage;
			
			if(pageNo <= 0) {
				pageNo = 1;
			}
		}
		
		
		
		int totalCount = communtyService.ajaxCommentTotalCount(postNo);
		
		int limit = 10;
	
		int buttonAmount = 5;
		
		
		PageInfoDTO page = Pagenation.getPageInfo(pageNo, totalCount, limit, buttonAmount);
		
		Map<String ,Object> map = new HashMap<>();
		
		map.put("postNo", postNo);
		map.put("page", page );
		
		 List<SPCommentDTO> comments = communtyService.selectAjaxCommentPageList(map); 
		 
		 Map<String,Object> pageComment = new HashMap<>();
		 pageComment.put("page", page);
		 pageComment.put("comments", comments);
		 
		String gson =  new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create().toJson(pageComment);
//		System.out.println(gson);
		
		return gson;
		
	}
	
	
	
	

}
