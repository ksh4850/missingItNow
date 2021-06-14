package com.finalproj.missingitnow.corpMng.model.dao;

import java.util.List;

import com.finalproj.missingitnow.corpMng.model.dto.CorpMngStatisticsDTO;
import com.finalproj.missingitnow.corpMng.model.dto.CorpUserDTO;

public interface CorpMngStatisticsDAO {

	// 일별 매출 통계 (ajax)
	List<CorpMngStatisticsDTO> selectDailyStatistics(CorpUserDTO corpUserSession);

	// 주별 매출 통계 (ajax)
	List<CorpMngStatisticsDTO> selectWeeklyStatistics(CorpUserDTO corpUserSession);

	// 월별 매출 통계 (ajax)	
	List<CorpMngStatisticsDTO> selectMonthlyStatistics(CorpUserDTO corpUserSession);

	// 카테고리별 매출 통계(ajax)
	List<CorpMngStatisticsDTO> selectCategoryStatistics(CorpUserDTO corpUserSession);

	// 상품별 매출 통계(ajax)
	List<CorpMngStatisticsDTO> selectProductStatistics(CorpUserDTO corpUserSession);

	// 지역별 매출 통계(ajax)
	List<CorpMngStatisticsDTO> selectAreaStatistics(CorpUserDTO corpUserSession);

	
}
