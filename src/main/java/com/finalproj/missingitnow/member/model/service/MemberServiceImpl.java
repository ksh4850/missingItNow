package com.finalproj.missingitnow.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.finalproj.missingitnow.common.exception.LoginFailedException;
import com.finalproj.missingitnow.member.model.dao.MemberMapper;
import com.finalproj.missingitnow.member.model.dto.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService{

	
	private MemberMapper mapper;
	private BCryptPasswordEncoder passwordEncoder;

	@Autowired
	public MemberServiceImpl(MemberMapper mapper, BCryptPasswordEncoder passwordEncoder) {
		
		this.mapper = mapper;
		this.passwordEncoder = passwordEncoder;		
	}
	
	
	@Override
	public boolean registMember(MemberDTO member) {
		
		
		return mapper.insertMember(member) > 0 ? true: false;
	}


	@Override
	public MemberDTO loginMember(MemberDTO member) throws LoginFailedException {
		
		if(!passwordEncoder.matches(member.getUserPwd(), mapper.selectEncPassword(member))){
			throw new LoginFailedException("로그인 실패!");
		}
				
		System.out.println(mapper.selectMember(member));
		
		return mapper.selectMember(member);
					
	}


	@Override
	public void userUpdate(MemberDTO member) {
		
		mapper.userUpdate(member);
		
	}


	@Override
	public void userQuit(MemberDTO member) {
		
		mapper.userQuit(member);
		
	}

}
