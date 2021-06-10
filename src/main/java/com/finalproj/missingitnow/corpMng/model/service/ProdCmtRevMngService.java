package com.finalproj.missingitnow.corpMng.model.service;

import java.util.List;
import java.util.Map;

import com.finalproj.missingitnow.corpMng.model.dto.CorpUserDTO;
import com.finalproj.missingitnow.corpMng.model.dto.ProdCmtListDTO;
import com.finalproj.missingitnow.corpMng.model.dto.ProdRevListDTO;

public interface ProdCmtRevMngService {

	// 상품문의 전체 조회
	int selectTotalProductCmtList(CorpUserDTO corpUserSession);
	List<ProdCmtListDTO> selectProductCmtList(Map<String, Object> params);
	
	// 상품리뷰 전체 조회
	int selectTotalProductRevList(CorpUserDTO corpUserSession);
	List<ProdRevListDTO> selectProductRevList(Map<String, Object> params);


}
