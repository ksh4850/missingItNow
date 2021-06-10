package com.finalproj.missingitnow.corpMng.model.service;

import java.util.List;
import java.util.Map;

import com.finalproj.missingitnow.common.page.PageInfoDTO;
import com.finalproj.missingitnow.corpMng.model.dto.CorpUserDTO;
import com.finalproj.missingitnow.corpMng.model.dto.ProdMngProductDTO;
import com.finalproj.missingitnow.corpMng.model.dto.ProdMngProductKeywordsDTO;



public interface ProdMngService {
	
	// 전체 상품 조회 (해당 기업이 등록한)
	int selectTotalProductList(CorpUserDTO corpUserSession);
	List<ProdMngProductDTO> selectProductList(Map<String, Object> params);
	
	// 카테고리별/상품별 등록 상품 조회
	int searchTotalProductList(Map<String, Object> params);
	List<ProdMngProductDTO> searchProductList(Map<String, Object> params);
	
	// 상품등록 
	int insertProductInfo(ProdMngProductDTO prodMngProduct);
	int insertProdImg(Map<String, String> file);
	// 해당 상품 키워드 등록
	int insertKeywords(Map<String, String> key);

	
	// 수정을 위한 해당 상품번호에 대한 정보 조회
	List<ProdMngProductDTO> selectProductForUpdate(ProdMngProductDTO prodMngProduct);
	
	
	// 상품별 정보 수정
	int updateProductInfo(ProdMngProductDTO prodMngProduct);
	int deleteProdImg(ProdMngProductDTO prodMngProduct);
	int updateProdImg(Map<String, String> file);
	
	
	
	
}
