package com.finalproj.missingitnow.corpMng.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproj.missingitnow.common.page.PageInfoDTO;
import com.finalproj.missingitnow.corpMng.model.dao.SalesMngSalesDAO;
import com.finalproj.missingitnow.corpMng.model.dto.CorpUserDTO;
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
	public int selectTotalOrderList(CorpUserDTO corpUserSession) {
		return salesMngSalesDAO.selectTotalOrderList(corpUserSession);
	}

	@Override
	public List<SalesMngOrderDTO> selectOrderList(Map<String, Object> params) {
		return salesMngSalesDAO.selectOrderList(params);
	}
	
	@Override
	public int searchTotalOrderList(SalesMngOrderDTO salesMngOrderList) {
		return salesMngSalesDAO.searchTotalOrderList(salesMngOrderList);
	}
	
	@Override
	public List<SalesMngOrderDTO> searchOrderListByDate(Map<String, Object> params) {
		return salesMngSalesDAO.searchOrderListByDate(params);
	}

	@Override
	public int selectTotalSalesList(CorpUserDTO corpUserSession) {
		return salesMngSalesDAO.selectTotalSalesList(corpUserSession);
	}
	
	@Override
	public List<SalesMngSalesDTO> selectSalesList(Map<String, Object> params) {
		return salesMngSalesDAO.selectSalesList(params);
	}
	
	@Override
	public int searchTotalSalesList(SalesMngSalesDTO salesMngSalesList) {
		return salesMngSalesDAO.searchTotalSalesList(salesMngSalesList);
	}
	
	@Override
	public List<SalesMngSalesDTO> searchSalesListByDate(Map<String, Object> params) {
		return salesMngSalesDAO.searchSalesListByDate(params);
	}
	
	@Override
	public SalesMngSalesDTO expectedSettlementList(SalesMngSalesDTO salesMngSalesList) {
		return salesMngSalesDAO.expectedSettlementList(salesMngSalesList);
	}

	

	
	
	
}
