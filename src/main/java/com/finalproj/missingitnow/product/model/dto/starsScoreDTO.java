package com.finalproj.missingitnow.product.model.dto;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

public class starsScoreDTO implements Serializable {
	


	private static final long serialVersionUID = 6833208582301824296L;
	
	private int count;
	private int starsScore;
	
	
	
	
	public starsScoreDTO() {}




	public starsScoreDTO(int count, int starsScore) {
		super();
		this.count = count;
		this.starsScore = starsScore;
	}




	public int getCount() {
		return count;
	}




	public void setCount(int count) {
		this.count = count;
	}




	public int getStarsScore() {
		return starsScore;
	}




	public void setStarsScore(int starsScore) {
		this.starsScore = starsScore;
	}




	public static long getSerialversionuid() {
		return serialVersionUID;
	}




	@Override
	public String toString() {
		return "starsScore [count=" + count + ", starsScore=" + starsScore + "]";
	}

	

	
}
