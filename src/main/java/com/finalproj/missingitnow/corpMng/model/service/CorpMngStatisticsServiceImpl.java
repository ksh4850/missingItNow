package com.finalproj.missingitnow.corpMng.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproj.missingitnow.corpMng.model.dao.CorpMngStatisticsDAO;
import com.finalproj.missingitnow.corpMng.model.dto.CorpMngStatisticsDTO;
import com.finalproj.missingitnow.corpMng.model.dto.CorpUserDTO;

@Service
public class CorpMngStatisticsServiceImpl implements CorpMngStatisticsService {
	
	private final CorpMngStatisticsDAO corpMngStatisticsDAO;
	
	@Autowired
	public CorpMngStatisticsServiceImpl(CorpMngStatisticsDAO corpMngStatisticsDAO) {
		this.corpMngStatisticsDAO = corpMngStatisticsDAO;
	}

	@Override
	public List<CorpMngStatisticsDTO> selectDailyStatistics(CorpUserDTO corpUserSession) {
		return corpMngStatisticsDAO.selectDailyStatistics(corpUserSession);
	}

	@Override
	public List<CorpMngStatisticsDTO> selectWeeklyStatistics(CorpUserDTO corpUserSession) {
		return corpMngStatisticsDAO.selectWeeklyStatistics(corpUserSession);
	}

	@Override
	public List<CorpMngStatisticsDTO> selectMonthlyStatistics(CorpUserDTO corpUserSession) {
		return corpMngStatisticsDAO.selectMonthlyStatistics(corpUserSession);
	}
	
	@Override
	public List<CorpMngStatisticsDTO> selectCategoryStatistics(CorpUserDTO corpUserSession) {
		return corpMngStatisticsDAO.selectCategoryStatistics(corpUserSession);
	}

	@Override
	public List<CorpMngStatisticsDTO> selectProductStatistics(CorpUserDTO corpUserSession) {
		return corpMngStatisticsDAO.selectProductStatistics(corpUserSession);
	}

	@Override
	public List<CorpMngStatisticsDTO> selectAreaStatistics(CorpUserDTO corpUserSession) {
		return corpMngStatisticsDAO.selectAreaStatistics(corpUserSession);
	}


}
