package com.finalproj.missingitnow.system.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.finalproj.missingitnow.system.model.dao.SystemMapper;
import com.finalproj.missingitnow.system.model.dto.CorpPageDTO;
import com.finalproj.missingitnow.system.model.dto.CorpSellPageDTO;
import com.finalproj.missingitnow.system.model.dto.DepositPageDTO;
import com.finalproj.missingitnow.system.model.dto.OrderPageDTO;
import com.finalproj.missingitnow.system.model.dto.SCorpDTO;
import com.finalproj.missingitnow.system.model.dto.SDepositDTO;
import com.finalproj.missingitnow.system.model.dto.SOrderDTO;



@Service
public class SystemServiceImpl implements SystemService {
	
	
	private final SystemMapper systemMapper;
	
	
	public SystemServiceImpl(SystemMapper systemMapper) {
		this.systemMapper = systemMapper;
		
	}

	@Override
	public List<SCorpDTO> selectSystemCorp(CorpPageDTO corpPage) {
		
		return systemMapper.selectSystemCorp(corpPage);
	}


	@Override
	public int selectCorpTotalCount(CorpPageDTO corpPage) {
		return systemMapper.selectCorpTotalCount(corpPage);
	}


	@Override
	public int modifyRegstAccpet(String corpNo) {
		return systemMapper.modifyRegstAccpet(corpNo);
	}

	@Override
	public int selectAjaxCorpTotalCount(CorpPageDTO corpPage) {
		return systemMapper.selectAjaxCorpTotalCount(corpPage);
	}

	@Override
	public List<SCorpDTO> selectAjaxSystemCorp(CorpPageDTO corpPage) {
		return systemMapper.selectAjaxSystemCorp(corpPage);
	}

	@Override
	public int selectDepositCount(DepositPageDTO depositPage) {
		return systemMapper.selectDepositCount(depositPage);
	}

	@Override
	public List<SDepositDTO> selectSystemDepositList(DepositPageDTO depositPage) {
		return systemMapper.selectSystemDepositList(depositPage);
	}

	@Override
	public int selectOrderInfoCount(OrderPageDTO orderPage) {
		return systemMapper.selectOrderInfoCount(orderPage);
	}

	@Override
	public List<SOrderDTO> selectSystemOrderInfo(OrderPageDTO orderPage) {
		return systemMapper.selectSystemOrderInfo(orderPage);
	}


	@Override
	public int selectTodaySalse(CorpSellPageDTO corpSellPage) {
		return systemMapper.selectTodaySalse(corpSellPage);
	}

	@Override
	public int selectOneMonthSalse(CorpSellPageDTO corpSellPage) {
		return systemMapper.selectOneMonthSalse(corpSellPage);
	}

	@Override
	public List<Map<String, String>> selectDaySalseInfo(CorpSellPageDTO corpSellPage) {
		return systemMapper.selectDaySalseInfo(corpSellPage);
	}

	@Override
	public List<Map<String, Object>> selectProductTopInfo(CorpSellPageDTO corpSellPage) {
		return systemMapper.selectProductTopInfo(corpSellPage);
	}

	@Override
	public List<Map<String, Object>> selectCategoryInfo(CorpSellPageDTO corpSellPage) {
		return systemMapper.selectCategoryInfo(corpSellPage);
	}

	@Override
	public List<Map<String, String>> selectAjaxDaySalseInfo(CorpSellPageDTO corpSellPage) {
		return systemMapper.selectAjaxDaySalseInfo(corpSellPage);
	}

	@Override
	public List<Map<String, Object>> selectAjaxProductTopInfo(CorpSellPageDTO corpSellPage) {
		// TODO Auto-generated method stub
		return systemMapper.selectAjaxProductTopInfo(corpSellPage);
	}

	@Override
	public List<Map<String, Object>> selectAjaxCategoryInfo(CorpSellPageDTO corpSellPage) {
		// TODO Auto-generated method stub
		return systemMapper.selectAjaxCategoryInfo(corpSellPage);
	}

	@Override
	public Map<String, Object> selectAgeSalseInfo(CorpSellPageDTO corpSellPage) {
		// TODO Auto-generated method stub
		return systemMapper.selectAgeSalseInfo(corpSellPage);
	}

	@Override
	public Map<String, Object> selectAJaxAgeSalseInfo(CorpSellPageDTO corpSellPage) {
		return systemMapper.selectAJaxAgeSalseInfo(corpSellPage);
	}

	@Override
	public List<Map<String, Object>> selectCategorySalseInfo(CorpSellPageDTO corpSellPage) {
		return systemMapper.selectCategorySalseInfo(corpSellPage);
	}

	@Override
	public List<Map<String, Object>> selectAjaxCategorySalseInfo(CorpSellPageDTO corpSellPage) {
		return systemMapper.selectAjaxCategorySalseInfo(corpSellPage);
	}

}
