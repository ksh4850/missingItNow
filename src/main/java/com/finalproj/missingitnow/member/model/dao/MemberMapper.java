package com.finalproj.missingitnow.member.model.dao;

import com.finalproj.missingitnow.member.model.dto.PrivateMemberDTO;

public interface MemberMapper {

	int insertMember(PrivateMemberDTO member);

	String selectEncPassword(PrivateMemberDTO member);

	PrivateMemberDTO selectMember(PrivateMemberDTO member);

	void userUpdate(PrivateMemberDTO member);

	void userQuit(PrivateMemberDTO member);

	void pwdChange(PrivateMemberDTO member);

	int loginCheck(PrivateMemberDTO member);

	int leaveCheck(PrivateMemberDTO member);
	
}
