package com.finalproj.missingitnow.product.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproj.missingitnow.product.model.dao.ProductDAO;
import com.finalproj.missingitnow.product.model.dto.CommentDTO;
import com.finalproj.missingitnow.product.model.dto.CorpDTO;
import com.finalproj.missingitnow.product.model.dto.OrderPaymentDTO;
import com.finalproj.missingitnow.product.model.dto.ProductDTO;
import com.finalproj.missingitnow.product.model.dto.ProductImgDTO;
import com.finalproj.missingitnow.product.model.dto.ProductListDTO;
import com.finalproj.missingitnow.product.model.dto.ReviewDTO;
import com.finalproj.missingitnow.product.model.dto.starsScoreDTO;

@Service
public class ProductServiceImpl implements ProductService {
	
	private final ProductDAO productDAO;
	
	@Autowired
	public ProductServiceImpl(ProductDAO productDAO) {
		this.productDAO = productDAO;
	}
	
	/* 상품 리스트 페이지 */
	@Override
	public List<ProductDTO> selectProduct(String prodCtgNo) {
//		System.out.println("여기오시나요 혹시");
//		List<ProductDTO> as = productDAO.selectProduct(prodCtgNo);
//		List<ProductListDTO> productList = new ArrayList<>();
//		int count = 0;
//		for(ProductDTO product : as) {
//			String prodNo = product.getProdNo();
//			starsScoreDTO StarsScoreDTO = new starsScoreDTO();
//			String starsScore = productDAO.starsScore(prodNo);
//			String starsScore2 = productDAO.starsScore2(prodNo);
//			StarsScoreDTO.setCount(Integer.valueOf(starsScore));
//			StarsScoreDTO.setStarsScore(Integer.valueOf(starsScore2));
//	
//			ProductListDTO productStarsScore = new ProductListDTO();
//			productStarsScore.setProduct(product);
//			productStarsScore.setStarsScore(StarsScoreDTO);
//			productList.add(count,productStarsScore);
//			
//			System.out.println(productList);
//			count += 1;
//		}
		System.out.println("왜안아와");
		
		return productDAO.selectProduct(prodCtgNo);
	}

	@Override
	public List<ProductDTO> selectProductHigh(String prodCtgNo) {
		return productDAO.selectProductHigh(prodCtgNo);
	}

	@Override
	public List<ProductDTO> selectProductLow(String prodCtgNo) {
		return productDAO.selectProductLow(prodCtgNo);
	}

	@Override
	public List<ProductDTO> selectProductPopularity(String prodCtgNo) {
		return productDAO.selectProductPopularity(prodCtgNo);
	}

	/* 상품 상세페이지 */
	/* 상품 정보 */
	@Override
	public List<ProductDTO> Product(String prodNo) {
		return productDAO.product(prodNo);
	}
	
	/* 상품 회사 정보 */
	@Override
	public List<CorpDTO> corp(String corpNo) {
		return productDAO.corp(corpNo);
	}
	
	/* 상품 썸네일 상세페이지 이미지 부르기 */
	@Override
	public List<ProductImgDTO> ProductImg(String prodNo) {
		return productDAO.ProductImg(prodNo);
	}
	
	/* 상품 리뷰 불러오기 */
	@Override
	public List<ReviewDTO> review(String prodNo) {
		return productDAO.review(prodNo);
	}
	
	/* 상품 리뷰 등록 */
	@Override
	public String reviewStar(HashMap<String, Object> insertReview) {
		return productDAO.reviewStar(insertReview);
	}


	@Override
	public List<ProductDTO> selectProductPriceChoice(HashMap<String, Object> price) {
		return productDAO.selectProductPriceChoice(price);
	}

	/* 상품 문의 등록 */
	@Override
	public void commentInsert(HashMap<String, Object> insertComment) {
		productDAO.commentInsert(insertComment);
	}

	/* 상품 문의 가져오기 */
	@Override
	public List<CommentDTO> comment(String prodNo) {
		return productDAO.comment(prodNo);
	}
	
	/* 주문 목록 추가 하기 */
	@Override
	public void orderInsert(HashMap<String, Object> orderList) {
		productDAO.orderInsert(orderList);
	}
	
	/* 구매 목록 추가하기 */
	@Override
	public void orderpurchasedInsert(HashMap<String, Object> purchasedList) {
		productDAO.orderpurchasedInsert(purchasedList);		
	}

	/* 결재시 재고 업데이트 */
	@Override
	public void stockUpdate(HashMap<String, Object> stockUpdate) {
		System.out.println(stockUpdate);
		productDAO.stockUpdate(stockUpdate);		
	}
	
	/* 결재내역 추가하기*/
	@Override
	public void paymentInsert(HashMap<String, Object> paymentInsert) {
		productDAO.paymentInsert(paymentInsert);	
	}
	
	/* 구매결재 코드번호 셀렉 작업 */
	@Override
	public OrderPaymentDTO selectorderNo(String prodNo) {
		return productDAO.selectorderNo(prodNo);
	}
	/* 구매결재 코드번호 셀렉 작업 */
	@Override
	public OrderPaymentDTO orderPayment(String noOrder) {
		System.out.println(noOrder + noOrder + "noOrder");
		return productDAO.orderPayment(noOrder);
	}
	
	/* 구매 결재 중간다리 테이블 인설트 작업 */
	@Override
	public void orderPaymentInsert(HashMap<String, Object> orderPaymentInsert) {
		System.out.println(orderPaymentInsert);
		productDAO.orderPaymentInsert(orderPaymentInsert);
	}

	/* 메인페이지 상품 6개 전체보기 */
	@Override
	public List<ProductDTO> allproductTotSix() {
		return productDAO.allproductTotSix();
	}
	
	/* 메인페이지 상품 6개 거실 침실 */
	@Override
	public List<ProductDTO> selectProduct0001() {
		return productDAO.selectProduct0001();
	}

	/* 메인페이지 상품 6개 학생/서재가구 */
	@Override
	public List<ProductDTO> selectProduct0002() {
		return productDAO.selectProduct0002();
	}

	/* 메인페이지 상품 6개 테이블/의자 */
	@Override
	public List<ProductDTO> selectProduct0003() {
		return productDAO.selectProduct0003();
	}

	/* 메인페이지 상품 6개 침구/커튼 */
	@Override
	public List<ProductDTO> selectProduct0004() {
		return productDAO.selectProduct0004();
	}

	/* 메인페이지 상품 6개 쿠션/방석 */
	@Override
	public List<ProductDTO> selectProduct0005() {
		return productDAO.selectProduct0005();
	}

	/* 메인페이지 상품 6개 가전 */
	@Override
	public List<ProductDTO> selectProduct0006() {
		return productDAO.selectProduct0006();
	}

	/* 메인페이지 상품 6개 수납/정리 */
	@Override
	public List<ProductDTO> selectProduct0007() {
		return productDAO.selectProduct0007();
	}

	/* 메인페이지 상품 6개 조명 */
	@Override
	public List<ProductDTO> selectProduct0008() {
		return productDAO.selectProduct0008();
	}

	/* 메인페이지 상품 6개 홈데코 */
	@Override
	public List<ProductDTO> selectProduct0009() {
		return productDAO.selectProduct0009();
	}

	/* 메인페이지 상품 6개 생활용품 */
	@Override
	public List<ProductDTO> selectProduct0010() {
		return productDAO.selectProduct0010();
	}
	
	/* 인기상품 TOP 7 */
	@Override
	public List<ProductDTO> allproductTopSeven() {
		return productDAO.allproductTopSeven();
	}

	



	

	
	

	





	



	
}
