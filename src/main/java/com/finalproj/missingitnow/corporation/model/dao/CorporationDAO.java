package com.finalproj.missingitnow.corporation.model.dao;

import java.util.List;

import com.finalproj.missingitnow.product.model.dto.CorpDTO;
import com.finalproj.missingitnow.product.model.dto.ProductDTO;
import com.finalproj.missingitnow.product.model.dto.ProductImgDTO;
import com.finalproj.missingitnow.product.model.dto.ReviewDTO;



public interface CorporationDAO {

	String selectEncPassword(CorpDTO member);

	CorpDTO login(CorpDTO member);

}
