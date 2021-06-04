package com.finalproj.missingitnow.corporation.model.service;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproj.missingitnow.common.exception.LoginFailedException;
import com.finalproj.missingitnow.corporation.model.dao.CorporationDAO;
import com.finalproj.missingitnow.corporation.model.dto.MemberDTO;


@Service
public class CorporationServiceImpl implements CorporationService {
	
	private final BCryptPasswordEncoder passwordEncoder;
	private final CorporationDAO corporationDAO;
	
	@Autowired
	public CorporationServiceImpl(CorporationDAO corporationDAO, BCryptPasswordEncoder passwordEncoder) {
		this.corporationDAO = corporationDAO;
		this.passwordEncoder = passwordEncoder;
	}

	@Override
	public MemberDTO loginMember(MemberDTO member) throws LoginFailedException {
		
		System.out.println("memberPWD : " + member.getCorpPwd());
		
		if(!passwordEncoder.matches(member.getCorpPwd(), corporationDAO.selectEncPassword(member))){
			throw new LoginFailedException("로그인 실패!");
		}
		
		String a = corporationDAO.selectEncPassword(member);
		System.out.println("corporationDAO.selectEncPassword(member) : " + a);
		
		return corporationDAO.login(member);
	}
//
	@Override
	public boolean registMember(MemberDTO member) {
		return corporationDAO.insertMember(member) > 0? true: false;
	}



	

	
	


	
}
