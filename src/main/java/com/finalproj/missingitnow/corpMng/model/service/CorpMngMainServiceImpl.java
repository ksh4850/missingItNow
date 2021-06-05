package com.finalproj.missingitnow.corpMng.model.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproj.missingitnow.corpMng.model.dao.CorpMngMainDAO;
import com.finalproj.missingitnow.corpMng.model.dto.CorpUserDTO;

@Service
public class CorpMngMainServiceImpl implements CorpMngMainService {
	
	private final CorpMngMainDAO corpMngMainDAO;
	
	@Autowired
	public CorpMngMainServiceImpl(CorpMngMainDAO corpMngMainDAO) {
		this.corpMngMainDAO = corpMngMainDAO;
	}

	@Override
	public CorpUserDTO selectCorpUserInfo() {
		return corpMngMainDAO.selectCorpUserInfo();
	}

	@Override
	public int updateCorpUserInfo(CorpUserDTO corpUser) {
		return corpMngMainDAO.updateCorpUserInfo(corpUser);
	}

	@Override
	public int deleteCorpUserImg(CorpUserDTO corpUser) {
		return corpMngMainDAO.deleteCorpUserImg(corpUser);
	}

	@Override
	public int updateCorpUserImg(Map<String, String> file) {
		return corpMngMainDAO.updateCorpUserImg(file);
	}
	
}
