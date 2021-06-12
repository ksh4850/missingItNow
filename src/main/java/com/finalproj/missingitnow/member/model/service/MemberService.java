package com.finalproj.missingitnow.member.model.service;

import javax.servlet.http.HttpServletResponse;

import com.finalproj.missingitnow.common.exception.LoginFailedException;
import com.finalproj.missingitnow.member.model.dto.PasswordFindDTO;
import com.finalproj.missingitnow.member.model.dto.PrivateMemberDTO;

public interface MemberService {

	boolean registMember(PrivateMemberDTO member);

	PrivateMemberDTO loginMember(PrivateMemberDTO member);

	void userUpdate(PrivateMemberDTO member);

	void userQuit(PrivateMemberDTO member);

	void pwdChange(PrivateMemberDTO member);


	String pwdFind(HttpServletResponse response, PasswordFindDTO passwordFind, PrivateMemberDTO member);

	int loginCheck(PrivateMemberDTO member);

	int leaveCheck(PrivateMemberDTO member);

}
