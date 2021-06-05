package com.finalproj.missingitnow.product.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproj.missingitnow.product.model.dao.ProductDAO;
import com.finalproj.missingitnow.product.model.dto.CorpDTO;
import com.finalproj.missingitnow.product.model.dto.ProductDTO;
import com.finalproj.missingitnow.product.model.dto.ProductImgDTO;
import com.finalproj.missingitnow.product.model.dto.ReviewDTO;

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

	@Override
	public String reviewStar(List<Map<String, String>> list) {
		return productDAO.reviewStar(list);
	}

	@Override
	public List<ProductDTO> selectProductPriceChoice(HashMap<String, Object> price) {
		return productDAO.selectProductPriceChoice(price);
	}

	
	

	





	



	
}
