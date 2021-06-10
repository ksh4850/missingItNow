package com.finalproj.missingitnow.corporation.model.service;


import java.util.List;

import com.finalproj.missingitnow.common.exception.LoginFailedException;
import com.finalproj.missingitnow.corpMng.model.dto.CorpUserDTO;


public interface CorporationService {
	
	CorpUserDTO loginMember(CorpUserDTO member) throws LoginFailedException;
//
	boolean registMember(CorpUserDTO member);
	
	/* 아이디 중복 체크 */
	List<CorpUserDTO> idCheck();
	



	
	
}
