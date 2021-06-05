package com.finalproj.missingitnow.corpMng.model.dao;

import java.util.Map;

import com.finalproj.missingitnow.corpMng.model.dto.CorpUserDTO;

public interface CorpMngMainDAO {

	// 정보 수정을 위한 정보 select
	CorpUserDTO selectCorpUserInfo();
	
	// 기업회원 정보 수정
	int updateCorpUserInfo(CorpUserDTO corpUser);
	int deleteCorpUserImg(CorpUserDTO corpUser);
	int updateCorpUserImg(Map<String, String> file);

	
	

}
