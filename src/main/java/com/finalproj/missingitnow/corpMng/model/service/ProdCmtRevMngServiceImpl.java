package com.finalproj.missingitnow.corpMng.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproj.missingitnow.corpMng.model.dao.ProdCmtRevMngDAO;
import com.finalproj.missingitnow.corpMng.model.dto.CorpUserDTO;
import com.finalproj.missingitnow.corpMng.model.dto.ProdCmtListDTO;
import com.finalproj.missingitnow.corpMng.model.dto.ProdRevListDTO;

@Service
public class ProdCmtRevMngServiceImpl implements ProdCmtRevMngService {
	
	private final ProdCmtRevMngDAO prodCmtRevMngDAO;
	
	@Autowired
	public ProdCmtRevMngServiceImpl(ProdCmtRevMngDAO prodCmtRevMngDAO) {
		this.prodCmtRevMngDAO = prodCmtRevMngDAO;
	}

	@Override
	public int selectTotalProductCmtList(CorpUserDTO corpUserSession) {
		return prodCmtRevMngDAO.selectTotalProductCmtList(corpUserSession);
	}

	@Override
	public List<ProdCmtListDTO> selectProductCmtList(Map<String, Object> params) {
		return prodCmtRevMngDAO.selectProductCmtList(params);
	}

	@Override
	public int selectTotalProductRevList(CorpUserDTO corpUserSession) {
		return prodCmtRevMngDAO.selectTotalProductRevList(corpUserSession);
	}

	@Override
	public List<ProdRevListDTO> selectProductRevList(Map<String, Object> params) {
		return prodCmtRevMngDAO.selectProductRevList(params);
	}
	
	
}
