package com.finalproj.missingitnow.corpMng.model.service;

import java.util.List;
import java.util.Map;

import com.finalproj.missingitnow.common.page.PageInfoDTO;
import com.finalproj.missingitnow.corpMng.model.dto.SalesMngOrderDTO;
import com.finalproj.missingitnow.corpMng.model.dto.SalesMngSalesDTO;

public interface SalesMngService {
	
	// 주문내역 전체 조회
	int selectTotalOrderList();
	List<SalesMngOrderDTO> selectOrderList(PageInfoDTO pageInfo);

	// 기간별 주문내역 조회
	int searchTotalOrderList(SalesMngOrderDTO salesMngOrderList);
	List<SalesMngOrderDTO> searchOrderListByDate(Map<String, Object> params);
	
	// 매출내역 전체 조회
	int selectTotalSalesList();
	List<SalesMngSalesDTO> selectSalesList(PageInfoDTO pageInfo);
	
	// 기간별 매출내역 조회
	int searchTotalSalesList(SalesMngSalesDTO salesMngSalesList);
	List<SalesMngSalesDTO> searchSalesListByDate(Map<String, Object> params);

	// 예상 정산금 조회
	SalesMngSalesDTO expectedSettlementList(SalesMngSalesDTO salesMngSalesList);

	

}
