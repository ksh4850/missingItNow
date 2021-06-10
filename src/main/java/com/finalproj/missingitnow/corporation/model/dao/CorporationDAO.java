package com.finalproj.missingitnow.corporation.model.dao;

import java.util.List;

import com.finalproj.missingitnow.corpMng.model.dto.CorpUserDTO;

public interface CorporationDAO {

	int insertMember(CorpUserDTO member);

	String selectEncPassword(CorpUserDTO member);

	CorpUserDTO login(CorpUserDTO member);
	
	/* 아이디 중복체크 */
	List<CorpUserDTO> idCheck();



}
