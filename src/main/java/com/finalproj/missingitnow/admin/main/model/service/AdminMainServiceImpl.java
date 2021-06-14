package com.finalproj.missingitnow.admin.main.model.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproj.missingitnow.admin.main.model.dao.AdminMainMapper;

@Service("mainService")
public class AdminMainServiceImpl implements AdminMainService {

	private final AdminMainMapper mapper;
	
	@Autowired
	public AdminMainServiceImpl(AdminMainMapper mapper) {
		
		this.mapper = mapper;
		
	}
	
	@Override
	public Map<String, Integer> selectMainPageDatas() {
		
		Map<String, Integer> datas = new HashMap<>();
		
		// 일반회원 관련 데이터 셀렉
		datas.put("totalUserCount", mapper.selectTotalUserCount());
		datas.put("todayRegistUserCount", mapper.selectTodayRegistUserCount());
		datas.put("unpurchasedUserCount", mapper.selectUnpurchasedUserCount());
		datas.put("highRateRefundUserCount", mapper.selectHighRateRefundUserCount());
		
		// 기업회원 관련 데이터 셀렉
		datas.put("totalCorpUserCount", mapper.selectTotalCorpUserCount());
		datas.put("unacceptedCorpUserCount", mapper.selectUnacceptedCorpUserCount());
		datas.put("todayRegistCorpUserCount", mapper.selectTodayRegistCorpUserCount());
		
		// Q&A 관련 데이터 셀렉 
		datas.put("totalQNACount", mapper.selectTotalQNACount());
		datas.put("totalAnsweredCount", mapper.selectTotalAnsweredCount());
		datas.put("totalNonAnswerCount", mapper.selectTotalNonAnswerCount());
		datas.put("totalNonAnswerUserQuestionCount", mapper.selectTotalNonAnswerUserQuestionCount());
		datas.put("totalNonAnswerCorpUserQuestionCount", mapper.selectTotalNonAnswerCorpUserQuestionCount());
		
		// 정산 관련 데이터 셀렉 
		datas.put("totalSettlementCount", mapper.selectTotalSettlementCount());
		datas.put("unsettlementCount", mapper.selectUnsettlementCount());
		datas.put("shortPeriodSettlementCount", mapper.selectShortPeriodSettlementCount());
		datas.put("largeAmountSettlementCount", mapper.selectLargeAmountSettlementCount());
		datas.put("todaySettlementCount", mapper.selectTodaySettlementCount());
		
		// 주문 관련 데이터 셀렉 
		datas.put("totalOrderCount", mapper.selectTotalOrderCount()); 
		datas.put("lastMonthOrderCount", mapper.selectLastMonthOrderCount());
		datas.put("refundOrReturnOrderCount", mapper.selectRefundOrReturnOrderCount());
		datas.put("deliveringOrderCount", mapper.selectDeliveringOrderCount());
		datas.put("waitingDepositOrderCount", mapper.selectWaitingDepositOrderCount());
		 
		// 수수료 관련 데이터 셀렉 
		datas.put("totalCommission", mapper.selectTotalCommission());
		datas.put("lastMonthCommission", mapper.selectLastMonthCommission());
		datas.put("lastWeekCommission", mapper.selectLastWeekCommission());
		datas.put("lastDayCommission", mapper.selectLastDayCommission());
				
		return datas;
	}

}
