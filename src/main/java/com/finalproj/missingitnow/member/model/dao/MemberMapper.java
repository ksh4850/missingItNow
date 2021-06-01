package com.finalproj.missingitnow.member.model.dao;

import com.finalproj.missingitnow.member.model.dto.MemberDTO;

public interface MemberMapper {

	int insertMember(MemberDTO member);

	String selectEncPassword(MemberDTO member);

	MemberDTO selectMember(MemberDTO member);

	void userUpdate(MemberDTO member);

	void userQuit(MemberDTO member);
	
}
