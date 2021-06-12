package com.finalproj.missingitnow.corpMng.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproj.missingitnow.corpMng.model.dao.CorpMngMainDAO;
import com.finalproj.missingitnow.corpMng.model.dto.CorpUserDTO;
import com.finalproj.missingitnow.corpMng.model.dto.ProdCmtListDTO;
import com.finalproj.missingitnow.corpMng.model.dto.ProdMngProductDTO;
import com.finalproj.missingitnow.corpMng.model.dto.ProdRevListDTO;
import com.finalproj.missingitnow.corpMng.model.dto.SalesMngOrderDTO;

@Service
public class CorpMngMainServiceImpl implements CorpMngMainService {
	
	private final CorpMngMainDAO corpMngMainDAO;
	
	@Autowired
	public CorpMngMainServiceImpl(CorpMngMainDAO corpMngMainDAO) {
		this.corpMngMainDAO = corpMngMainDAO;
	}

	@Override
	public CorpUserDTO selectCorpUserInfo(CorpUserDTO corpUser) {
		return corpMngMainDAO.selectCorpUserInfo(corpUser);
	}
	
	@Override
	public int selectDepositTotal(CorpUserDTO corpUserSession) {
		return corpMngMainDAO.selectDepositTotal(corpUserSession);
	}

	@Override
	public List<ProdMngProductDTO> selectRecentProductList(CorpUserDTO corpUserSession) {
		return corpMngMainDAO.selectRecentProductList(corpUserSession);
	}
	
	@Override
	public SalesMngOrderDTO selectCountOrderStatus(CorpUserDTO corpUserSession) {
		return corpMngMainDAO.selectCountOrderStatus(corpUserSession);
	}
	
	@Override
	public List<ProdCmtListDTO> selectRecentProductCmtList(CorpUserDTO corpUserSession) {
		return corpMngMainDAO.selectRecentProductCmtList(corpUserSession);
	}
	
	@Override
	public List<ProdRevListDTO> selectRecentProductRevList(CorpUserDTO corpUserSession) {
		return corpMngMainDAO.selectRecentProductRevList(corpUserSession);
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
