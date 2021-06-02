package com.finalproj.missingitnow.admin.settlement.model.service;

import java.util.List;

import com.finalproj.missingitnow.common.search.DetailSearchDTO;
import com.finalproj.missingitnow.corpMng.model.dto.SettleMngSettlementDTO;

public interface SettlementService {

	int selectTotalCount(DetailSearchDTO search);

	List<SettleMngSettlementDTO> selectList(DetailSearchDTO search);

	void updateSettlementProgress(String[] settlementNo);

}
