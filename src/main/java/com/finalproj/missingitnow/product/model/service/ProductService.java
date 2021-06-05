package com.finalproj.missingitnow.product.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.finalproj.missingitnow.product.model.dto.CorpDTO;
import com.finalproj.missingitnow.product.model.dto.ProductDTO;
import com.finalproj.missingitnow.product.model.dto.ProductImgDTO;
import com.finalproj.missingitnow.product.model.dto.ReviewDTO;

public interface ProductService {
	
	// 상품 리스트 쓰일 정보들
	List<ProductDTO> selectProduct(String prodCtgNo);

	List<ProductDTO> selectProductHigh(String prodCtgNo);

	List<ProductDTO> selectProductLow(String prodCtgNo);

	List<ProductDTO> selectProductPopularity(String prodCtgNo);

	/* 상품 정보 */
	List<ProductDTO> Product(String prodNo);

	/* 기업 정보 불러오기 */
	List<CorpDTO> corp(String corpNo);

	/* 상품 상세페이지 이미지 불러오기 */
	List<ProductImgDTO> ProductImg(String prodNo);
	
	/* 리뷰 불러오기 */
	List<ReviewDTO> review(String prodNo);

	/* 댓글 등록 */
	String reviewStar(List<Map<String, String>> list);

	/* 가격선택 리스트 */
	List<ProductDTO> selectProductPriceChoice(HashMap<String, Object> price);
	
	


	



	
	
}
