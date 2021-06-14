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
	public List<ProductListDTO> selectProduct(String prodCtgNo) {
		List<ProductDTO> selectProduct = productDAO.selectProduct(prodCtgNo);
		List<ReviewDTO> reviewCtgNo = productDAO.reviewCtgNo(prodCtgNo);
		List<ProductImgDTO> productImg = productDAO.productImgList(prodCtgNo);
		List<ProductListDTO> productList = new ArrayList<>();
		int count = 0;
		double score = 0.0;
		for(ProductDTO product : selectProduct) {
			ProductListDTO productDTO = new ProductListDTO();
			starsScoreDTO starsScore = new starsScoreDTO();
			productDTO.setProduct(product);
			
			for(ProductImgDTO img : productImg) {
				if(product.getProdNo().equals(img.getProdNo())) {
					productDTO.setProductImg(img);
					break;
				}
			}
			
			for(ReviewDTO review : reviewCtgNo) {
				if(product.getProdNo().equals(review.getProdNo())){
					count += 1;
					score += review.getReviewScore();
				}
			}
			score = score / count;
			starsScore.setCount(count);
			starsScore.setStarsScore((int)score);
			
			
			productDTO.setStarsScore(starsScore);
			score = 0.0;
			count = 0;
			productList.add(productDTO);
		}
		return productList;
	}

	@Override
	public List<ProductListDTO> selectProductHigh(String prodCtgNo) {
		List<ProductDTO> selectProduct = productDAO.selectProductHigh(prodCtgNo);
		List<ReviewDTO> reviewCtgNo = productDAO.reviewCtgNo(prodCtgNo);
		List<ProductImgDTO> productImg = productDAO.productImgList(prodCtgNo);
		List<ProductListDTO> productList = new ArrayList<>();
		int count = 0;
		double score = 0.0;
		for(ProductDTO product : selectProduct) {
			ProductListDTO productDTO = new ProductListDTO();
			starsScoreDTO starsScore = new starsScoreDTO();
			productDTO.setProduct(product);
			
			for(ProductImgDTO img : productImg) {
				if(product.getProdNo().equals(img.getProdNo())) {
					productDTO.setProductImg(img);
					break;
				}
			}
			
			for(ReviewDTO review : reviewCtgNo) {
				if(product.getProdNo().equals(review.getProdNo())){
					count += 1;
					score += review.getReviewScore();
				}
			}
			score = score / count;
			starsScore.setCount(count);
			starsScore.setStarsScore((int)score);
			
			
			productDTO.setStarsScore(starsScore);
			score = 0.0;
			count = 0;
			productList.add(productDTO);
		}
		return productList;
	}

	@Override
	public List<ProductListDTO> selectProductLow(String prodCtgNo) {
		List<ProductDTO> selectProduct = productDAO.selectProductLow(prodCtgNo);
		List<ReviewDTO> reviewCtgNo = productDAO.reviewCtgNo(prodCtgNo);
		List<ProductImgDTO> productImg = productDAO.productImgList(prodCtgNo);
		List<ProductListDTO> productList = new ArrayList<>();
		int count = 0;
		double score = 0.0;
		for(ProductDTO product : selectProduct) {
			ProductListDTO productDTO = new ProductListDTO();
			starsScoreDTO starsScore = new starsScoreDTO();
			productDTO.setProduct(product);
			
			for(ProductImgDTO img : productImg) {
				if(product.getProdNo().equals(img.getProdNo())) {
					productDTO.setProductImg(img);
					break;
				}
			}
			
			for(ReviewDTO review : reviewCtgNo) {
				if(product.getProdNo().equals(review.getProdNo())){
					count += 1;
					score += review.getReviewScore();
				}
			}
			score = score / count;
			starsScore.setCount(count);
			starsScore.setStarsScore((int)score);
			
			
			productDTO.setStarsScore(starsScore);
			score = 0.0;
			count = 0;
			productList.add(productDTO);
		}
		return productList;
	}

	@Override
	public List<ProductListDTO> selectProductPopularity(String prodCtgNo) {
		List<ProductDTO> selectProduct = productDAO.selectProductPopularity(prodCtgNo);
		List<ReviewDTO> reviewCtgNo = productDAO.reviewCtgNo(prodCtgNo);
		List<ProductImgDTO> productImg = productDAO.productImgList(prodCtgNo);
		List<ProductListDTO> productList = new ArrayList<>();
		int count = 0;
		double score = 0.0;
		for(ProductDTO product : selectProduct) {
			ProductListDTO productDTO = new ProductListDTO();
			starsScoreDTO starsScore = new starsScoreDTO();
			productDTO.setProduct(product);
			
			for(ProductImgDTO img : productImg) {
				if(product.getProdNo().equals(img.getProdNo())) {
					productDTO.setProductImg(img);
					break;
				}
			}
			
			for(ReviewDTO review : reviewCtgNo) {
				if(product.getProdNo().equals(review.getProdNo())){
					count += 1;
					score += review.getReviewScore();
				}
			}
			score = score / count;
			starsScore.setCount(count);
			starsScore.setStarsScore((int)score);
			
			
			productDTO.setStarsScore(starsScore);
			score = 0.0;
			count = 0;
			productList.add(productDTO);
		}
		return productList;
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
	public void reviewStar(HashMap<String, Object> insertReview) {
		productDAO.reviewStar(insertReview);
	}

	/* 가격에 맞는 상품 선택 */
	@Override
	public List<ProductListDTO> selectProductPriceChoice(HashMap<String, Object> price) {
		List<ProductDTO> selectProduct = productDAO.selectProductPriceChoice(price);
		List<ReviewDTO> reviewCtgNo = productDAO.reviewPrice(price);
		List<ProductImgDTO> productImg = productDAO.productImgListPrice(price);
		List<ProductListDTO> productList = new ArrayList<>();
		int count = 0;
		double score = 0.0;
		for(ProductDTO product : selectProduct) {
			ProductListDTO productDTO = new ProductListDTO();
			starsScoreDTO starsScore = new starsScoreDTO();
			productDTO.setProduct(product);
			
			for(ProductImgDTO img : productImg) {
				if(product.getProdNo().equals(img.getProdNo())) {
					productDTO.setProductImg(img);
					break;
				}
			}
			
			for(ReviewDTO review : reviewCtgNo) {
				if(product.getProdNo().equals(review.getProdNo())){
					count += 1;
					score += review.getReviewScore();
				}
			}
			score = score / count;
			starsScore.setCount(count);
			starsScore.setStarsScore((int)score);
			
			
			productDTO.setStarsScore(starsScore);
			score = 0.0;
			count = 0;
			productList.add(productDTO);
		}
		return productList;
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
		productDAO.stockUpdate(stockUpdate);		
	}
	
	/* 결재내역 추가하기*/
	@Override
	public void paymentInsert(HashMap<String, Object> paymentInsert) {
		productDAO.paymentInsert(paymentInsert);	
	}
	
	/* 구매결재 코드번호 셀렉 작업 */
	@Override
	public OrderPaymentDTO selectorderNo(HashMap<String, Object> orderList) {
		return productDAO.selectorderNo(orderList);
	}
	/* 구매결재 코드번호 셀렉 작업 */
	@Override
	public OrderPaymentDTO orderPayment(HashMap<String, Object> purchasedList) {
		return productDAO.orderPayment(purchasedList);
	}
	
	/* 구매 결재 중간다리 테이블 인설트 작업 */
	@Override
	public void orderPaymentInsert(HashMap<String, Object> orderPaymentInsert) {
		productDAO.orderPaymentInsert(orderPaymentInsert);
	}

	/* 메인페이지 상품 6개 전체보기 */
	@Override
	public List<ProductListDTO> allproductTotSix() {
		
		List<ProductListDTO> allproductTotSix = new ArrayList<ProductListDTO>();
		List<ProductDTO> list = productDAO.allproductTotSix();
		for(ProductDTO proList : list) {
			ProductListDTO productListDTO = new ProductListDTO();
			productListDTO.setProduct(proList);
			ProductImgDTO productImgDTO = productDAO.productImgCatg(proList.getProdNo());
			productListDTO.setProductImg(productImgDTO);
			
			allproductTotSix.add(productListDTO);
			
		}
		return allproductTotSix;
	}
	
	/* 메인페이지 상품 6개 거실 침실 */
	@Override
	public List<ProductListDTO> selectProduct0001() {
		List<ProductListDTO> selectProduct0001 = new ArrayList<ProductListDTO>();
		List<ProductDTO> list = productDAO.selectProduct0001();
		for(ProductDTO proList : list) {
			ProductListDTO productListDTO = new ProductListDTO();
			productListDTO.setProduct(proList);
			ProductImgDTO productImgDTO = productDAO.productImgCatg(proList.getProdNo());
			productListDTO.setProductImg(productImgDTO);
			
			selectProduct0001.add(productListDTO);
			
		}
		return selectProduct0001;
	}

	/* 메인페이지 상품 6개 학생/서재가구 */
	@Override
	public List<ProductListDTO> selectProduct0002() {
		List<ProductListDTO> selectProduct0002 = new ArrayList<ProductListDTO>();
		List<ProductDTO> list = productDAO.selectProduct0002();
		for(ProductDTO proList : list) {
			ProductListDTO productListDTO = new ProductListDTO();
			productListDTO.setProduct(proList);
			ProductImgDTO productImgDTO = productDAO.productImgCatg(proList.getProdNo());
			productListDTO.setProductImg(productImgDTO);
			
			selectProduct0002.add(productListDTO);
			
		}
		return selectProduct0002;
	}

	/* 메인페이지 상품 6개 테이블/의자 */
	@Override
	public List<ProductListDTO> selectProduct0003() {
		List<ProductListDTO> selectProduct0003 = new ArrayList<ProductListDTO>();
		List<ProductDTO> list = productDAO.selectProduct0003();
		for(ProductDTO proList : list) {
			ProductListDTO productListDTO = new ProductListDTO();
			productListDTO.setProduct(proList);
			ProductImgDTO productImgDTO = productDAO.productImgCatg(proList.getProdNo());
			productListDTO.setProductImg(productImgDTO);
			
			selectProduct0003.add(productListDTO);
			
		}
		return selectProduct0003;
	}
	/* 메인페이지 상품 6개 침구/커튼 */
	@Override
	public List<ProductListDTO> selectProduct0004() {
		List<ProductListDTO> selectProduct0004 = new ArrayList<ProductListDTO>();
		List<ProductDTO> list = productDAO.selectProduct0004();
		for(ProductDTO proList : list) {
			ProductListDTO productListDTO = new ProductListDTO();
			productListDTO.setProduct(proList);
			ProductImgDTO productImgDTO = productDAO.productImgCatg(proList.getProdNo());
			productListDTO.setProductImg(productImgDTO);
			
			selectProduct0004.add(productListDTO);
			
		}
		return selectProduct0004;
	}

	/* 메인페이지 상품 6개 쿠션/방석 */
	@Override
	public List<ProductListDTO> selectProduct0005() {
		List<ProductListDTO> selectProduct0005 = new ArrayList<ProductListDTO>();
		List<ProductDTO> list = productDAO.selectProduct0005();
		for(ProductDTO proList : list) {
			ProductListDTO productListDTO = new ProductListDTO();
			productListDTO.setProduct(proList);
			ProductImgDTO productImgDTO = productDAO.productImgCatg(proList.getProdNo());
			productListDTO.setProductImg(productImgDTO);
			
			selectProduct0005.add(productListDTO);
			
		}
		return selectProduct0005;
	}

	/* 메인페이지 상품 6개 가전 */
	@Override
	public List<ProductListDTO> selectProduct0006() {
		List<ProductListDTO> selectProduct0006 = new ArrayList<ProductListDTO>();
		List<ProductDTO> list = productDAO.selectProduct0006();
		for(ProductDTO proList : list) {
			ProductListDTO productListDTO = new ProductListDTO();
			productListDTO.setProduct(proList);
			ProductImgDTO productImgDTO = productDAO.productImgCatg(proList.getProdNo());
			productListDTO.setProductImg(productImgDTO);
			
			selectProduct0006.add(productListDTO);
			
		}
		return selectProduct0006;
	}

	/* 메인페이지 상품 6개 수납/정리 */
	@Override
	public List<ProductListDTO> selectProduct0007() {
		List<ProductListDTO> selectProduct0007= new ArrayList<ProductListDTO>();
		List<ProductDTO> list = productDAO.selectProduct0007();
		for(ProductDTO proList : list) {
			ProductListDTO productListDTO = new ProductListDTO();
			productListDTO.setProduct(proList);
			ProductImgDTO productImgDTO = productDAO.productImgCatg(proList.getProdNo());
			productListDTO.setProductImg(productImgDTO);
			
			selectProduct0007.add(productListDTO);
			
		}
		return selectProduct0007;
	}

	/* 메인페이지 상품 6개 조명 */
	@Override
	public List<ProductListDTO> selectProduct0008() {
		List<ProductListDTO> selectProduct0008 = new ArrayList<ProductListDTO>();
		List<ProductDTO> list = productDAO.selectProduct0008();
		for(ProductDTO proList : list) {
			ProductListDTO productListDTO = new ProductListDTO();
			productListDTO.setProduct(proList);
			ProductImgDTO productImgDTO = productDAO.productImgCatg(proList.getProdNo());
			productListDTO.setProductImg(productImgDTO);
			
			selectProduct0008.add(productListDTO);
			
		}
		return selectProduct0008;
	}

	/* 메인페이지 상품 6개 홈데코 */
	@Override
	public List<ProductListDTO> selectProduct0009() {
		List<ProductListDTO> selectProduct0009 = new ArrayList<ProductListDTO>();
		List<ProductDTO> list = productDAO.selectProduct0009();
		for(ProductDTO proList : list) {
			ProductListDTO productListDTO = new ProductListDTO();
			productListDTO.setProduct(proList);
			ProductImgDTO productImgDTO = productDAO.productImgCatg(proList.getProdNo());
			productListDTO.setProductImg(productImgDTO);
			
			selectProduct0009.add(productListDTO);
			
		}
		return selectProduct0009;
	}

	/* 메인페이지 상품 6개 생활용품 */
	@Override
	public List<ProductListDTO> selectProduct0010() {
		List<ProductListDTO> selectProduct0010 = new ArrayList<ProductListDTO>();
		List<ProductDTO> list = productDAO.selectProduct0010();
		for(ProductDTO proList : list) {
			ProductListDTO productListDTO = new ProductListDTO();
			productListDTO.setProduct(proList);
			ProductImgDTO productImgDTO = productDAO.productImgCatg(proList.getProdNo());
			productListDTO.setProductImg(productImgDTO);
			
			selectProduct0010.add(productListDTO);
			
		}
		return selectProduct0010;
	}
	
	/* 인기상품 TOP 7 */
	@Override
	public List<ProductListDTO> allproductTopSeven() {
		List<ProductListDTO> allproductTopSeven = new ArrayList<ProductListDTO>();
		List<ProductDTO> list = productDAO.allproductTopSeven();
		for(ProductDTO proList : list) {
			ProductListDTO productListDTO = new ProductListDTO();
			productListDTO.setProduct(proList);
			ProductImgDTO productImgDTO = productDAO.productImgCatg(proList.getProdNo());
			productListDTO.setProductImg(productImgDTO);
			
			allproductTopSeven.add(productListDTO);
			
		}
		return allproductTopSeven;
	}
	/* 자동 검색 기능 */
	@Override
	public List<ProductDTO> selectketSearch() {
		return productDAO.selectketSearch();
	}

	/* 검색에서 상품 리스트 페이지로 넘어갈때 */
	@Override
	public List<ProductListDTO> productSearch(String search) {
		List<ProductDTO> selectProduct = productDAO.productSearch(search);
		List<ReviewDTO> reviewCtgNo = productDAO.reviewSearchCtgNo(search);
		List<ProductImgDTO> productImg = productDAO.productSearchImgList(search);
		List<ProductListDTO> productList = new ArrayList<>();
		int count = 0;
		double score = 0.0;
		for(ProductDTO product : selectProduct) {
			ProductListDTO productDTO = new ProductListDTO();
			starsScoreDTO starsScore = new starsScoreDTO();
			productDTO.setProduct(product);
			
			for(ProductImgDTO img : productImg) {
				if(product.getProdNo().equals(img.getProdNo())) {
					productDTO.setProductImg(img);
					break;
				}
			}
			
			for(ReviewDTO review : reviewCtgNo) {
				if(product.getProdNo().equals(review.getProdNo())){
					count += 1;
					score += review.getReviewScore();
				}
			}
			score = score / count;
			starsScore.setCount(count);
			starsScore.setStarsScore((int)score);
			
			
			productDTO.setStarsScore(starsScore);
			score = 0.0;
			count = 0;
			productList.add(productDTO);
		}
		return productList;
	}
	
	/* 장바구니에 등록하기 */
	@Override
	public boolean cart(HashMap<String, Object> myPageCart) {
		return productDAO.cart(myPageCart) > 0? true: false;
	}
	
	/* 검색기능 */
	@Override
	public List<ProductListDTO> ketSearchTopList(String search) {
		List<ProductDTO> list = productDAO.ketSearchTopList(search);
		List<ProductListDTO> ketSearchTopList = new ArrayList<ProductListDTO>();
		for(ProductDTO proList : list) {
			ProductListDTO productListDTO = new ProductListDTO();
			productListDTO.setProduct(proList);
			ProductImgDTO productImgDTO = productDAO.productImgSearch(proList.getProdNo());
			productListDTO.setProductImg(productImgDTO);
			
			ketSearchTopList.add(productListDTO);
			
		}
		return ketSearchTopList;
	}


//	/* 댓글 이미지 */
//	@Override
//	public void reviewImgInsert(Map<String, String> file) {
//		productDAO.reviewImgInsert(file);
//		
//	}
	
	

	



	

	
	

	





	



	
}
