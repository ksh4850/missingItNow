package com.finalproj.missingitnow.corpMng.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproj.missingitnow.common.page.PageInfoDTO;
import com.finalproj.missingitnow.corpMng.model.dao.SettleMngSettlementDAO;
import com.finalproj.missingitnow.corpMng.model.dto.CorpUserDTO;
import com.finalproj.missingitnow.corpMng.model.dto.SalesMngSalesDTO;
import com.finalproj.missingitnow.corpMng.model.dto.SettleMngDepositDTO;
import com.finalproj.missingitnow.corpMng.model.dto.SettleMngPaymentDTO;
import com.finalproj.missingitnow.corpMng.model.dto.SettleMngSettlementDTO;

@Service
public class SettleMngServiceImpl implements SettleMngService {
	
	private final SettleMngSettlementDAO settleMngSettlementDAO;
	
	@Autowired
	public SettleMngServiceImpl(SettleMngSettlementDAO settleMngSettlementDAO) {
		this.settleMngSettlementDAO = settleMngSettlementDAO;
	}
	
	@Override
	public int selectTotalSettlementList(CorpUserDTO corpUserSession) {
		return settleMngSettlementDAO.selectTotalSettlementList(corpUserSession);
	}

	@Override
	public List<SettleMngSettlementDTO> selectSettlementList(Map<String, Object> params) {
		return settleMngSettlementDAO.selectSettlementList(params);
	}

	@Override
	public List<SalesMngSalesDTO> selectExpectedSettlement(SalesMngSalesDTO salesMngSales) {
		return settleMngSettlementDAO.selectExpectedSettlement(salesMngSales);
	}

	@Override
	public int insertSettlement(SettleMngSettlementDTO settleMngSettlement) {
		return settleMngSettlementDAO.insertSettlement(settleMngSettlement);
	}

	@Override
	public SettleMngSettlementDTO chkLastEndDate(CorpUserDTO corpUserSession) {
		return settleMngSettlementDAO.chkLastEndDate(corpUserSession);
	}
	
	@Override
	public int selectTotalDepositList(CorpUserDTO corpUserSession) {
		return settleMngSettlementDAO.selectTotalDepositList(corpUserSession);
	}

	@Override
	public List<SettleMngDepositDTO> selectDepositList(Map<String, Object> params) {
		return settleMngSettlementDAO.selectDepositList(params);
	}

	@Override
	public CorpUserDTO selectCorpUserForPay(CorpUserDTO corpUserSession) {
		return settleMngSettlementDAO.selectCorpUserForPay(corpUserSession);
	}

	@Override
	public int insertPayment(Map<String, Object> params) {
		return settleMngSettlementDAO.insertPayment(params);
	}

	@Override
	public int insertDepositCharge(Map<String, Object> params) {
		return settleMngSettlementDAO.insertDepositCharge(params);
	}

	@Override
	public int selectTotalPaymentList(CorpUserDTO corpUserSession) {
		return settleMngSettlementDAO.selectTotalPaymentList(corpUserSession);
	}

	@Override
	public List<SettleMngPaymentDTO> selectPaymentList(Map<String, Object> params) {
		return settleMngSettlementDAO.selectPaymentList(params);
	}



}
