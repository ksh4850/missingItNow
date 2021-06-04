package com.finalproj.missingitnow.corporation.model.dao;

import com.finalproj.missingitnow.corporation.model.dto.MemberDTO;

public interface CorporationDAO {

	int insertMember(MemberDTO member);

	String selectEncPassword(MemberDTO member);

	MemberDTO login(MemberDTO member);

}
