package com.finalproj.missingitnow.admin.notice.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproj.missingitnow.admin.notice.model.dao.NoticeMapper;
import com.finalproj.missingitnow.admin.notice.model.dto.NoticeDTO;
import com.finalproj.missingitnow.common.search.MoreSearchDTO;

@Service("NTCService")
public class NoticeServiceImpl implements NoticeService{

	private final NoticeMapper mapper;
	
	@Autowired
	public NoticeServiceImpl(NoticeMapper mapper) {
		
		this.mapper = mapper;
		
	}
	
	@Override
	public int deleteNTC(String no) {

		return mapper.deleteNTC(no);
		
	}

	@Override
	public NoticeDTO updateNTC(NoticeDTO ntcDTO) {

		String no = ntcDTO.getNo();
		
		NoticeDTO ntc = null;
		
		if(mapper.updateNTC(ntcDTO) == 1) {
			
			ntc = mapper.selectDetail(no);
			
		}
		
		return ntc;
		
	}

	@Override
	public NoticeDTO selectDetail(String no) {

		NoticeDTO ntc = null;
		if(mapper.increamentBoardCount(no) == 1) {
			
			ntc = mapper.selectDetail(no);
			
		}
		
		return ntc;
		
	}

	@Override
	public boolean insertNTC(NoticeDTO ntcDTO) {
		
		return mapper.insertNTC(ntcDTO) > 0 ? true : false;
		
	}

	@Override
	public List<NoticeDTO> selectList(MoreSearchDTO search) {

		List<NoticeDTO> boardList = mapper.selectList(search);
		
		return boardList;
		
	}

	@Override
	public int selectTotalCount() {

		int totalCount = 0;
		
		totalCount = mapper.selectTotalCount();
		
		return totalCount;
		
	}

}
