package com.finalproj.missingitnow.system.model.service;

import java.util.List;
import java.util.Map;

import com.finalproj.missingitnow.system.model.dto.CorpPageDTO;
import com.finalproj.missingitnow.system.model.dto.CorpSellPageDTO;
import com.finalproj.missingitnow.system.model.dto.DepositPageDTO;
import com.finalproj.missingitnow.system.model.dto.OrderPageDTO;
import com.finalproj.missingitnow.system.model.dto.SCorpDTO;
import com.finalproj.missingitnow.system.model.dto.SDepositDTO;
import com.finalproj.missingitnow.system.model.dto.SOrderDTO;



public interface SystemService {

	

	List<SCorpDTO> selectSystemCorp(CorpPageDTO corpPage);

	int selectCorpTotalCount(CorpPageDTO corpPage);

	int modifyRegstAccpet(String corpNo);

	int selectAjaxCorpTotalCount(CorpPageDTO corpPage);

	List<SCorpDTO> selectAjaxSystemCorp(CorpPageDTO corpPage);

	int selectDepositCount(DepositPageDTO depositPage);

	List<SDepositDTO> selectSystemDepositList(DepositPageDTO depositPage);

	int selectOrderInfoCount(OrderPageDTO orderPage);

	List<SOrderDTO> selectSystemOrderInfo(OrderPageDTO orderPage);

	int selectTodaySalse(CorpSellPageDTO corpSellPage);

	int selectOneMonthSalse(CorpSellPageDTO corpSellPage);

	List<Map<String, String>> selectDaySalseInfo(CorpSellPageDTO corpSellPage);

	List<Map<String, Object>> selectProductTopInfo(CorpSellPageDTO corpSellPage);

	List<Map<String, Object>> selectCategoryInfo(CorpSellPageDTO corpSellPage);

	List<Map<String, String>> selectAjaxDaySalseInfo(CorpSellPageDTO corpSellPage);

	List<Map<String, Object>> selectAjaxProductTopInfo(CorpSellPageDTO corpSellPage);

	List<Map<String, Object>> selectAjaxCategoryInfo(CorpSellPageDTO corpSellPage);

	
	
	
	

}
