package com.finalproj.missingitnow.member.model.service;

import com.finalproj.missingitnow.common.exception.LoginFailedException;
import com.finalproj.missingitnow.member.model.dto.PrivateMemberDTO;

public interface MemberService {

	boolean registMember(PrivateMemberDTO member);

	PrivateMemberDTO loginMember(PrivateMemberDTO member) throws LoginFailedException;

	void userUpdate(PrivateMemberDTO member);

	void userQuit(PrivateMemberDTO member);

	void pwdChange(PrivateMemberDTO member);

}
