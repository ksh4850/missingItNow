package com.finalproj.missingitnow.corporation.model.dao;

import com.finalproj.missingitnow.corpMng.model.dto.CorpUserDTO;

public interface CorporationDAO {

	int insertMember(CorpUserDTO member);

	String selectEncPassword(CorpUserDTO member);

	CorpUserDTO login(CorpUserDTO member);



}
