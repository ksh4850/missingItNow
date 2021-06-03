package com.finalproj.missingitnow.corpMng.model.service;

import java.util.List;
import java.util.Map;

import com.finalproj.missingitnow.corpMng.model.dto.CorpUserDTO;
import com.finalproj.missingitnow.corpMng.model.dto.SalesMngSalesDTO;
import com.finalproj.missingitnow.corpMng.model.dto.SettleMngDepositDTO;
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
	
	// 기업회원별 예치금 조회
	List<SettleMngDepositDTO> selectDepositList();
	
	// 결제를 위한 기업정보 조회 
	CorpUserDTO selectCorpUserForPay();
	
	// 예치금 충전 결제내역 insert
	int insertPayment(Map<String, Object> params);

	// 결제내역 insert하면서 예치금 테이블에도 같이 '충전'내용 insert
	int insertDepositCharge(Map<String, Object> params);
	
	

}
