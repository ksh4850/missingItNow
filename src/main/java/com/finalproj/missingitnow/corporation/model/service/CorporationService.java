package com.finalproj.missingitnow.corporation.model.service;

import java.util.List;

import com.finalproj.missingitnow.common.exception.LoginFailedException;
import com.finalproj.missingitnow.product.model.dto.CorpDTO;



public interface CorporationService {
	
	CorpDTO loginMember(CorpDTO member) throws LoginFailedException;



	
	
}
