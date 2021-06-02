package com.finalproj.missingitnow.admin.settlement.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproj.missingitnow.admin.settlement.model.dao.SettlementMapper;
import com.finalproj.missingitnow.common.search.DetailSearchDTO;
import com.finalproj.missingitnow.corpMng.model.dto.SettleMngSettlementDTO;

@Service("settlementService")
public class SettlementServiceImpl implements SettlementService{
	
	private final SettlementMapper mapper;
	
	@Autowired
	public SettlementServiceImpl(SettlementMapper mapper) {
		
		this.mapper = mapper;
		
	}

	@Override
	public int selectTotalCount(DetailSearchDTO search) {

		return mapper.selectSearchTotalCount(search);
		
	}

	@Override
	public List<SettleMngSettlementDTO> selectList(DetailSearchDTO search) {
		
		return mapper.selectList(search);
		
	}

	@Override
	public void updateSettlementProgress(String[] settlementNo) {
		
		for(int i = 0 ; i < settlementNo.length ; i++) {
			
			mapper.updateSettlementProgress(settlementNo[i]);
			
		}
		
	}

}
