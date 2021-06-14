package com.finalproj.missingitnow.member.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproj.missingitnow.common.page.PageInfoDTO;
import com.finalproj.missingitnow.member.model.dao.QnaBoardMapper;
import com.finalproj.missingitnow.member.model.dto.QnaBoardDTO;

@Service
public class QnaBoardServiceImpl implements QnaBoardService{

	private final QnaBoardMapper mapper;
	
	
	@Autowired
	public QnaBoardServiceImpl(QnaBoardMapper mapper) {
		super();
		this.mapper = mapper;
	}

	@Override
	public int selectTotalCount() {
		
		return mapper.selectTotalCount();
	}

	@Override
	public List<QnaBoardDTO> selectBoardList(PageInfoDTO pageInfo, String userNo, int startRow, int endRow) {
		
		
		
		return mapper.selectBoardList(pageInfo,userNo, startRow, endRow);
	}
	
}
