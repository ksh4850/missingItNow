package com.finalproj.missingitnow.communty.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproj.missingitnow.communty.model.dao.CommuntyMapper;
import com.finalproj.missingitnow.communty.model.dto.SPCommentDTO;
import com.finalproj.missingitnow.communty.model.dto.SPReCommentDTO;
import com.finalproj.missingitnow.communty.model.dto.SPostDTO;
import com.finalproj.missingitnow.communty.model.dto.SPostImgDTO;
import com.finalproj.missingitnow.communty.model.dto.SPostListDTO;

@Service
public class CommuntyServiceImpl implements CommuntyService{
	
	private final CommuntyMapper communtyMapper;
	
	@Autowired
	public CommuntyServiceImpl(CommuntyMapper communtyMapper) {
		this.communtyMapper = communtyMapper;
	}

	/*
	 * @Override public int insertIngUpload(List<Map<String, String>> files) {
	 * 
	 * Map<String,Object> map = new HashMap<>();
	 * 
	 * map.put("files", files);
	 * 
	 * return communtyMapper.insertIngUpload(map); }
	 */


	@Override
	public int insertCommuntyRegist(SPostDTO post, List<SPostImgDTO> imgList) {
		
		int result = 0;
		
		int postResult = communtyMapper.insertCommuntyRegist(post);
		
		int imgResult = 0;
		
		for(int i = 0 ; i < imgList.size() ; i++) {
			imgResult += communtyMapper.insertPostImg(imgList.get(i));
		}
		
		if(postResult > 0 && imgResult == imgList.size()) {
			result = 1;
		}
		
		
		return result;
	}

	@Override
	public List<SPostListDTO> selectPostList() {
		
		List<SPostListDTO> postList = communtyMapper.selectPostList();
		
		for(int i= 0 ;  i < postList.size() ; i++) {
			postList.get(i).setCommuntCount(communtyMapper.selectCommentCounnt( postList.get(i).getPostNo()));
		}
		
		
		return postList;
	}

	@Override
	public List<SPostListDTO> selectAajxPostList(Map<String, Integer> map) {
		
	 List<SPostListDTO> postList = communtyMapper.selectAajxPostList(map);
		
		for(int i= 0 ;  i < postList.size() ; i++) {
			postList.get(i).setCommuntCount(communtyMapper.selectCommentCounnt( postList.get(i).getPostNo()));
			
		}
		
		return 	 postList;
	}

	@Override
	public SPostDTO selectCommunryDetail( Map<String ,Object> map) {
		
		SPostDTO post = communtyMapper.selectCommunryDetail(map);
		
		post.setCommuntCount(communtyMapper.selectCommentCounnt( post.getPostNo()));
		
		
		return post;
	}

	@Override
	public int insertAjaxCommentRegist(SPCommentDTO comment) {
		return communtyMapper.insertAjaxCommentRegist(comment);
	}

	@Override
	public  List<SPCommentDTO> selectAjaxCommunryDetail(String postNo) {
		return communtyMapper.selectAjaxCommunryDetail(postNo);
	}

	@Override
	public int insetAjaxResponseCommentRegist(SPReCommentDTO recomment) {
		return communtyMapper.insetAjaxResponseCommentRegist(recomment);
	}

	@Override
	public int deleteAjaxComment(String comtNo) {
		int result = communtyMapper.deleteAjaxComment(comtNo);
		
		
		return result;
	}

	@Override
	public int deleteAjaxResponse(String reComtNo) {
		return communtyMapper.deleteAjaxResponse(reComtNo);
	}

	@Override
	public int modifyAjaxCommentDetail(SPCommentDTO comment) {
		return communtyMapper.modifyAjaxCommentDetail(comment);
	}

	@Override
	public int modifyAjaxResponsetDetail(SPReCommentDTO recomment) {
		return communtyMapper.modifyAjaxResponsetDetail(recomment);
	}

	@Override
	public String selectLikeStatus(Map<String,String> map) {
		return communtyMapper.selectLikeStatus(map);
	}

	@Override
	public int modifyLikeStatus(Map<String, String> map) {
		return communtyMapper.modifyLikeStatus(map);
	}

	@Override
	public int selectAjaxLike(String postNo) {
		return communtyMapper.selectAjaxLike(postNo);
	}

	@Override
	public int insertLikeStatus(Map<String, String> map) {
		return communtyMapper.insertLikeStatus(map);
	}

	@Override
	public int selectAjaxCommentCount(String postNo) {
		return communtyMapper.selectAjaxCommentCount(postNo);
	}

	@Override
	public int ajaxCommentTotalCount(String postNo) {
		return communtyMapper.ajaxCommentTotalCount(postNo);
	}

	@Override
	public List<SPCommentDTO> selectAjaxCommentPageList(Map<String, Object> map) {
		return communtyMapper.selectAjaxCommentPageList(map);
	}

	

}
