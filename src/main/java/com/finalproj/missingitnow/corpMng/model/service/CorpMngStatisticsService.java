package com.finalproj.missingitnow.corpMng.model.service;

import java.util.List;

import com.finalproj.missingitnow.corpMng.model.dto.CorpMngStatisticsDTO;

public interface CorpMngStatisticsService {
	
	// 일별 매출 통계 (ajax)
	List<CorpMngStatisticsDTO> selectDailyStatistics();

	// 주별 매출 통계 (ajax)
	List<CorpMngStatisticsDTO> selectWeeklyStatistics();
	
}
