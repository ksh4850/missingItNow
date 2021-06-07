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




}
