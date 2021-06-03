package com.finalproj.missingitnow.corpMng.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproj.missingitnow.corpMng.model.dao.CorpMngStatisticsDAO;
import com.finalproj.missingitnow.corpMng.model.dto.CorpMngStatisticsDTO;

@Service
public class CorpMngStatisticsServiceImpl implements CorpMngStatisticsService {
	
	private final CorpMngStatisticsDAO corpMngStatisticsDAO;
	
	@Autowired
	public CorpMngStatisticsServiceImpl(CorpMngStatisticsDAO corpMngStatisticsDAO) {
		this.corpMngStatisticsDAO = corpMngStatisticsDAO;
	}

	@Override
	public List<CorpMngStatisticsDTO> selectDailyStatistics() {
		return corpMngStatisticsDAO.selectDailyStatistics();
	}

	@Override
	public List<CorpMngStatisticsDTO> selectWeeklyStatistics() {
		return corpMngStatisticsDAO.selectWeeklyStatistics();
	}

}
