package com.finalproj.missingitnow.corpMng.model.service;

import java.util.List;
import java.util.Map;
import com.finalproj.missingitnow.corpMng.model.dto.ProdMngProductDTO;



public interface ProdMngService {
	
	// 상품 조회
	List<ProdMngProductDTO> selectProductList();
	
	// 상품 정보 및 이미지 등록
	int insertProductInfo(ProdMngProductDTO prodMngProduct);
	int insertProdImg(Map<String, String> file);

	// 카테고리별 등록된 상품 조회
	List<ProdMngProductDTO> selectProductByCtg(String prodCtgNo);

	// 상품명별 등록된 상품 조회
	List<ProdMngProductDTO> selectProductByName(String prodName);
	
	// 수정을 위한 해당 상품번호에 대한 정보 조회
	List<ProdMngProductDTO> selectProductForUpdate(String prodNo);
	
	// 해당 상품 정보 수정
	int updateProductInfo(ProdMngProductDTO prodMngProduct);
	int deleteProdImg(ProdMngProductDTO prodMngProduct);
	int updateProdImg(Map<String, String> file);




	
	
}
