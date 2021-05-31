package com.finalproj.missingitnow.product.model.dao;

import java.util.List;
import java.util.Map;

import com.finalproj.missingitnow.product.model.dto.CorpDTO;
import com.finalproj.missingitnow.product.model.dto.ProductDTO;
import com.finalproj.missingitnow.product.model.dto.ProductImgDTO;
import com.finalproj.missingitnow.product.model.dto.ReviewDTO;



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



}
