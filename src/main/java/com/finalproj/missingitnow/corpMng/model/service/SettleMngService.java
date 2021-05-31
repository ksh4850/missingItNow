package com.finalproj.missingitnow.corpMng.model.service;

import java.util.List;

import com.finalproj.missingitnow.corpMng.model.dto.SalesMngSalesDTO;
import com.finalproj.missingitnow.corpMng.model.dto.SettleMngSettlementDTO;

public interface SettleMngService {
	
	// 전체 정산 내역 조회
	List<SettleMngSettlementDTO> selectSettlementList();

	// 기간별 예상 정산 조회
	List<SalesMngSalesDTO> selectExpectedSettlement(SalesMngSalesDTO salesMngSales);

	// 정산 요청하기
	int insertSettlement(SettleMngSettlementDTO settleMngSettlement);
	
	// 마지막 정산 날짜 확인
	SettleMngSettlementDTO chkLastEndDate();
	
	

}
