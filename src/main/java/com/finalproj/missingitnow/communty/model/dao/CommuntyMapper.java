package com.finalproj.missingitnow.communty.model.dao;

import java.util.List;
import java.util.Map;

import com.finalproj.missingitnow.communty.model.dto.SPCommentDTO;
import com.finalproj.missingitnow.communty.model.dto.SPReCommentDTO;
import com.finalproj.missingitnow.communty.model.dto.SPostDTO;
import com.finalproj.missingitnow.communty.model.dto.SPostImgDTO;
import com.finalproj.missingitnow.communty.model.dto.SPostListDTO;

public interface CommuntyMapper {


	int insertCommuntyRegist(SPostDTO post);

	int insertPostImg(SPostImgDTO img);

	List<SPostListDTO> selectPostList();

	List<SPostListDTO> selectAajxPostList(Map<String, Integer> map);

	SPostDTO selectCommunryDetail( Map<String ,Object> map);

	int insertAjaxCommentRegist(SPCommentDTO comment);

	 List<SPCommentDTO> selectAjaxCommunryDetail(String postNo);

	int insetAjaxResponseCommentRegist(SPReCommentDTO recomment);

	int deleteAjaxComment(String comtNo);

	int deleteAjaxCommentAndResponse(String comtNo);

	int deleteAjaxResponse(String reComtNo);

	int modifyAjaxCommentDetail(SPCommentDTO comment);

	int modifyAjaxResponsetDetail(SPReCommentDTO recomment);

	int selectCommentCounnt(String postNo);

	String selectLikeStatus(Map<String, String> map);

	int modifyLikeStatus(Map<String, String> map);

	int selectAjaxLike(String postNo);

	int insertLikeStatus(Map<String, String> map);

	int selectAjaxCommentCount(String postNo);

	int ajaxCommentTotalCount(String postNo);

	List<SPCommentDTO> selectAjaxCommentPageList(Map<String, Object> map);

}
