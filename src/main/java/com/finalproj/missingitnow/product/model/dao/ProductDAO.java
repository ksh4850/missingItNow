package com.finalproj.missingitnow.product.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.finalproj.missingitnow.product.model.dto.CommentDTO;
import com.finalproj.missingitnow.product.model.dto.CorpDTO;
import com.finalproj.missingitnow.product.model.dto.OrderPaymentDTO;
import com.finalproj.missingitnow.product.model.dto.ProductDTO;
import com.finalproj.missingitnow.product.model.dto.ProductImgDTO;
import com.finalproj.missingitnow.product.model.dto.ReviewDTO;
import com.finalproj.missingitnow.product.model.dto.starsScoreDTO;



public interface ProductDAO {
	

	List<ProductDTO> selectProduct(String prodCtgNo);

	List<ProductDTO> selectProductHigh(String prodCtgNo);

	List<ProductDTO> selectProductLow(String prodCtgNo);

	List<ProductDTO> selectProductPopularity(String prodCtgNo);

	List<ProductDTO> product(String prodNo);

	List<CorpDTO> corp(String corpNo);

	List<ProductImgDTO> ProductImg(String prodNo);

	List<ReviewDTO> review(String prodNo);

	String reviewStar(List<Map<String, String>> list);

	List<ProductDTO> selectProductPriceChoice(HashMap<String, Object> price);

	String starsScore(String prodNo);

	String starsScore2(String prodNo);

	String reviewStar(HashMap<String, Object> insertReview);

	void commentInsert(HashMap<String, Object> insertComment);

	List<CommentDTO> comment(String prodNo);

	void orderInsert(HashMap<String, Object> orderList);

	void orderpurchasedInsert(HashMap<String, Object> purchasedList);

	void stockUpdate(HashMap<String, Object> stockUpdate);

	void paymentInsert(HashMap<String, Object> paymentInsert);

	OrderPaymentDTO selectorderNo(String prodNo);
	
	OrderPaymentDTO orderPayment(String noOrder);

	void orderPaymentInsert(HashMap<String, Object> orderPaymentInsert);

	/* 메인페이지 상품 6개 전체 */
	List<ProductDTO> allproductTotSix();

	/* 메인페이지 상품 6개 거실 침실 */
	List<ProductDTO> selectProduct0001();
	/* 메인페이지 상품 6개 학생/서재가구 */
	List<ProductDTO> selectProduct0002();
	/* 메인페이지 상품 6개 테이블/의자 */
	List<ProductDTO> selectProduct0003();
	/* 메인페이지 상품 6개 침구/커튼 */
	List<ProductDTO> selectProduct0004();
	/* 메인페이지 상품 6개 쿠션/방석 */
	List<ProductDTO> selectProduct0005();
	/* 메인페이지 상품 6개 가전 */
	List<ProductDTO> selectProduct0006();
	/* 메인페이지 상품 6개 수납/정리 */
	List<ProductDTO> selectProduct0007();
	/* 메인페이지 상품 6개 조명 */
	List<ProductDTO> selectProduct0008();
	/* 메인페이지 상품 6개 홈데코 */
	List<ProductDTO> selectProduct0009();
	/* 메인페이지 상품 6개 생활용품 */
	List<ProductDTO> selectProduct0010();
	
	/* 인기상품 TOP7 */
	List<ProductDTO> allproductTopSeven();
	
	/* 자동 검색 기능 */
	List<ProductDTO> selectketSearch();
	
	/* 검색에서 상품 리스트 페이지로 넘어갈때 */
	List<ProductDTO> productSearch(String search);




}
