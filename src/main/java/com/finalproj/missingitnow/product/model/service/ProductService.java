package com.finalproj.missingitnow.product.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.finalproj.missingitnow.product.model.dto.CommentDTO;
import com.finalproj.missingitnow.product.model.dto.CorpDTO;
import com.finalproj.missingitnow.product.model.dto.OrderPaymentDTO;
import com.finalproj.missingitnow.product.model.dto.ProductDTO;
import com.finalproj.missingitnow.product.model.dto.ProductImgDTO;
import com.finalproj.missingitnow.product.model.dto.ProductListDTO;
import com.finalproj.missingitnow.product.model.dto.ReviewDTO;
import com.finalproj.missingitnow.product.model.dto.starsScoreDTO;

public interface ProductService {
	
	/* 상품 리스트 쓰일 정보들 */
	List<ProductDTO> selectProduct(String prodCtgNo);
	
	/* 가격 높은순 상품 */
	List<ProductDTO> selectProductHigh(String prodCtgNo);

	/* 가격 낮은순 상품 */
	List<ProductDTO> selectProductLow(String prodCtgNo);

	/* 인기순 상품 */
	List<ProductDTO> selectProductPopularity(String prodCtgNo);

	/* 가격선택 리스트 */
	List<ProductDTO> selectProductPriceChoice(HashMap<String, Object> price);
	
	/* 상품 정보 */
	List<ProductDTO> Product(String prodNo);

	/* 기업 정보 불러오기 */
	List<CorpDTO> corp(String corpNo);

	/* 상품 상세페이지 이미지 불러오기 */
	List<ProductImgDTO> ProductImg(String prodNo);
	
	/* 리뷰 불러오기 */
	List<ReviewDTO> review(String prodNo);

	/* 댓글 등록 */
	String reviewStar(HashMap<String, Object> insertReview);

	/* 상품 문의 등록 */
	void commentInsert(HashMap<String, Object> insertComment);
	
	/* 상품 문의 리스트 가져오기  */
	List<CommentDTO> comment(String prodNo);
	
	/* 주문 내역에 저장   */
	void orderInsert(HashMap<String, Object> orderList);
	
	/* 구매내역에 저장 */
	void orderpurchasedInsert(HashMap<String, Object> purchasedList);
	
	/* 재고 업데이트 */
	void stockUpdate(HashMap<String, Object> stockUpdate);
	
	/* 결재내역 */
	void paymentInsert(HashMap<String, Object> paymentInsert);
	
	/* 구매결재 코드번호 셀렉 작업 */
	OrderPaymentDTO selectorderNo(String prodNo);
	OrderPaymentDTO orderPayment(String noOrder);
	
	/* 구매 결재 중간다리 테이블 인설트 작업 */
	void orderPaymentInsert(HashMap<String, Object> orderPaymentInsert);

	/* 메인페이지 상품 6개 전체보기 */
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
