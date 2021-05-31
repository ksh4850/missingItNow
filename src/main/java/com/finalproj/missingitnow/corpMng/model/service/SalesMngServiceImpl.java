package com.finalproj.missingitnow.corpMng.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproj.missingitnow.corpMng.model.dao.SalesMngSalesDAO;
import com.finalproj.missingitnow.corpMng.model.dto.SalesMngOrderDTO;
import com.finalproj.missingitnow.corpMng.model.dto.SalesMngSalesDTO;

@Service
public class SalesMngServiceImpl implements SalesMngService {
	
	private final SalesMngSalesDAO salesMngSalesDAO;
	
	@Autowired
	public SalesMngServiceImpl(SalesMngSalesDAO salesMngSalesDAO) {
		this.salesMngSalesDAO = salesMngSalesDAO;
	}

	@Override
	public List<SalesMngOrderDTO> selectOrderList() {
		return salesMngSalesDAO.selectOrderList();
	}

	@Override
	public List<SalesMngOrderDTO> selectOrderListByDate(SalesMngOrderDTO salesMngOrderList) {
		return salesMngSalesDAO.selectOrderListByDate(salesMngOrderList);
	}

	@Override
	public List<SalesMngSalesDTO> selectSalesList() {
		return salesMngSalesDAO.selectSalesList();
	}

	@Override
	public List<SalesMngSalesDTO> selectSalesListByDate(SalesMngSalesDTO salesMngSalesList) {
		return salesMngSalesDAO.selectSalesListByDate(salesMngSalesList);
	}

	@Override
	public SalesMngSalesDTO expectedSettlementList(SalesMngSalesDTO salesMngSalesList) {
		return salesMngSalesDAO.expectedSettlementList(salesMngSalesList);
	}
	
	
	
}
