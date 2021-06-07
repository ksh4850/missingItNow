package com.finalproj.missingitnow.product.model.dto;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

public class ProductListDTO implements Serializable {
	


	private static final long serialVersionUID = 1965507036502452306L;
	
	private ProductDTO product;
	private starsScoreDTO starsScore;

	
	public ProductListDTO() {}


	public ProductListDTO(ProductDTO product, starsScoreDTO starsScore) {
		super();
		this.product = product;
		this.starsScore = starsScore;
	}


	public ProductDTO getProduct() {
		return product;
	}


	public void setProduct(ProductDTO product) {
		this.product = product;
	}


	public starsScoreDTO getStarsScore() {
		return starsScore;
	}


	public void setStarsScore(starsScoreDTO starsScore) {
		this.starsScore = starsScore;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	@Override
	public String toString() {
		return "testDTO [product=" + product + ", starsScore=" + starsScore + "]";
	}

	
	

	
}
