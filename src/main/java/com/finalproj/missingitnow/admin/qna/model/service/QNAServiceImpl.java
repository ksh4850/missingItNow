package com.finalproj.missingitnow.admin.qna.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproj.missingitnow.admin.qna.model.dao.QNAMapper;
import com.finalproj.missingitnow.admin.qna.model.dto.QNADTO;
import com.finalproj.missingitnow.common.search.DetailSearchDTO;
import com.finalproj.missingitnow.common.search.SearchDTO;

@Service("QNAService")
public class QNAServiceImpl implements QNAService{
	
	private final QNAMapper mapper;
	
	@Autowired
	public QNAServiceImpl(QNAMapper mapper) {
		
		this.mapper = mapper;
		
	}

	@Override
	public int selectTotalCount(Map<String, Object> mapperMap) {
		
		int totalCount = 0;
		
		totalCount = mapper.selectTotalCount(mapperMap);
		
		return totalCount;
	}

	@Override
	public List<QNADTO> selectList(Map<String, Object> mapperMap) {
		
		List<QNADTO> boardList = mapper.selectList(mapperMap);
		
		return boardList;
		
	}

	@Override
	public boolean insertQNA(QNADTO qnaDTO) {
		
		return mapper.insertQNA(qnaDTO) > 0 ? true : false;
		
	}

	@Override
	public List<QNADTO> selectAllList(DetailSearchDTO search) {
		
		List<QNADTO> boardList = mapper.selectAllList(search);
		
		return boardList;
	}

	@Override
	public int selectSearchTotalCount(DetailSearchDTO search) {
		
		return mapper.selectSearchTotalCount(search);
		
	}

	@Override
	public QNADTO updateQNA(QNADTO qnaDTO) {
		
		String no = qnaDTO.getNo();
		
		QNADTO qna = null;
		
		if(mapper.updateQNA(qnaDTO) == 1) {
			
			qna = mapper.selectDetail(no);
			
		}
		
		return qna;
		
	}

	@Override
	public int deleteQNA(String no) {
		
		return mapper.deleteQNA(no);
		
	}

	@Override
	public int updateResponse(QNADTO qnaDTO) {
		
		int result = 0;
		
		result += mapper.updateResponse(qnaDTO);
		
		if(result == 1) {
			
			result += mapper.updateReplyCheck(qnaDTO);
			
		}
		
		System.out.println(result);
		
		return result;
		
	}

	@Override
	public QNADTO selectDetail(String no) {
		
		QNADTO qna = null;
		if(mapper.increamentBoardCount(no) == 1) {
			
			qna = mapper.selectDetail(no);
			
		}
		
		return qna;
		
	}

}
