package com.finalproj.missingitnow.corporation.model.service;

import java.util.List;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproj.missingitnow.common.exception.LoginFailedException;
import com.finalproj.missingitnow.corporation.model.dao.CorporationDAO;
import com.finalproj.missingitnow.product.model.dto.CorpDTO;



@Service
public class CorporationServiceImpl implements CorporationService {
	private BCryptPasswordEncoder passwordEncoder;
	private final CorporationDAO corporationDAO;
	
	@Autowired
	public CorporationServiceImpl(CorporationDAO corporationDAO) {
		this.corporationDAO = corporationDAO;
		this.passwordEncoder = passwordEncoder;
	}

	@Override
	public CorpDTO loginMember(CorpDTO member) throws LoginFailedException {
		
		if(!passwordEncoder.matches(member.getCorpPwd(), corporationDAO.selectEncPassword(member))){
			throw new LoginFailedException("로그인 실패!");
		}
		
		return corporationDAO.login(member);
	}

	

	
	


	
}
