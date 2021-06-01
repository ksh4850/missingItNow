package com.finalproj.missingitnow.member.model.service;

import com.finalproj.missingitnow.common.exception.LoginFailedException;
import com.finalproj.missingitnow.member.model.dto.MemberDTO;

public interface MemberService {

	boolean registMember(MemberDTO member);

	MemberDTO loginMember(MemberDTO member) throws LoginFailedException;

	void userUpdate(MemberDTO member);

	void userQuit(MemberDTO member);

}
