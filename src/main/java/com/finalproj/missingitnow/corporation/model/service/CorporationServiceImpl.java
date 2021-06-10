package com.finalproj.missingitnow.corporation.model.service;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproj.missingitnow.common.exception.LoginFailedException;
import com.finalproj.missingitnow.corpMng.model.dto.CorpUserDTO;
import com.finalproj.missingitnow.corporation.model.dao.CorporationDAO;


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
	public CorpUserDTO loginMember(CorpUserDTO member) throws LoginFailedException {
		
		if(!passwordEncoder.matches(member.getCorpPwd(), corporationDAO.selectEncPassword(member))){
			throw new LoginFailedException("로그인 실패!");
		}
		
		return corporationDAO.login(member);
	}
//
	@Override
	public boolean registMember(CorpUserDTO member) {
		return corporationDAO.insertMember(member) > 0? true: false;
	}


	
}
