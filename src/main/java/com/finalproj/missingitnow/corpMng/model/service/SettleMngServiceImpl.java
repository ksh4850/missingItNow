package com.finalproj.missingitnow.corpMng.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproj.missingitnow.corpMng.model.dao.SettleMngSettlementDAO;
import com.finalproj.missingitnow.corpMng.model.dto.SalesMngSalesDTO;
import com.finalproj.missingitnow.corpMng.model.dto.SettleMngSettlementDTO;

@Service
public class SettleMngServiceImpl implements SettleMngService {
	
	private final SettleMngSettlementDAO settleMngSettlementDAO;
	
	@Autowired
	public SettleMngServiceImpl(SettleMngSettlementDAO settleMngSettlementDAO) {
		this.settleMngSettlementDAO = settleMngSettlementDAO;
	}

	@Override
	public List<SettleMngSettlementDTO> selectSettlementList() {
		return settleMngSettlementDAO.selectSettlementList();
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
	public SettleMngSettlementDTO chkLastEndDate() {
		return settleMngSettlementDAO.chkLastEndDate();
	}




}
