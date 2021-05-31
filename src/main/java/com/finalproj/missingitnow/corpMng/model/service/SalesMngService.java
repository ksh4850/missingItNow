package com.finalproj.missingitnow.corpMng.model.service;

import java.util.List;

import com.finalproj.missingitnow.corpMng.model.dto.SalesMngOrderDTO;
import com.finalproj.missingitnow.corpMng.model.dto.SalesMngSalesDTO;

public interface SalesMngService {
	
	// 주문내역 전체 조회
	List<SalesMngOrderDTO> selectOrderList();

	// 기간별 주문내역 조회
	List<SalesMngOrderDTO> selectOrderListByDate(SalesMngOrderDTO salesMngOrderList);
	
	// 매출내역 전체 조회
	List<SalesMngSalesDTO> selectSalesList();
	
	// 기간별 매출내역 조회
	List<SalesMngSalesDTO> selectSalesListByDate(SalesMngSalesDTO salesMngSalesList);

	// 예상 정산금 조회
	SalesMngSalesDTO expectedSettlementList(SalesMngSalesDTO salesMngSalesList);
	

}
