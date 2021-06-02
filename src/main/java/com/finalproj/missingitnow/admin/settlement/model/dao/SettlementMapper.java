package com.finalproj.missingitnow.admin.settlement.model.dao;

import java.util.List;

import com.finalproj.missingitnow.common.search.DetailSearchDTO;
import com.finalproj.missingitnow.corpMng.model.dto.SettleMngSettlementDTO;

public interface SettlementMapper {

	int selectSearchTotalCount(DetailSearchDTO search);

	List<SettleMngSettlementDTO> selectList(DetailSearchDTO search);

	void updateSettlementProgress(String string);

}
