package com.finalproj.missingitnow.corporation.model.dao;

import com.finalproj.missingitnow.corporation.model.dto.MemberDTO;

public interface CorporationDAO {

	String selectEncPassword(String a);

	MemberDTO login(String a);

	int insertMember(MemberDTO member);

}
