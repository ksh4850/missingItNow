package com.finalproj.missingitnow.corporation.model.service;


import com.finalproj.missingitnow.common.exception.LoginFailedException;
import com.finalproj.missingitnow.corpMng.model.dto.CorpUserDTO;


public interface CorporationService {
	
	CorpUserDTO loginMember(CorpUserDTO member) throws LoginFailedException;
//
	boolean registMember(CorpUserDTO member);
	



	
	
}
