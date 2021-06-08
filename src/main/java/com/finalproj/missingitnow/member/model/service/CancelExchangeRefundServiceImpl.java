package com.finalproj.missingitnow.member.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproj.missingitnow.common.page.PageInfoDTO;
import com.finalproj.missingitnow.member.model.dao.CancelExchangeRefundMapper;
import com.finalproj.missingitnow.member.model.dto.CancelExchangeRefundDTO;

@Service
public class CancelExchangeRefundServiceImpl implements CancelExchangeRefundService {
	
	private final CancelExchangeRefundMapper mapper;
	
	
	@Autowired
	public CancelExchangeRefundServiceImpl(CancelExchangeRefundMapper mapper) {
		super();
		this.mapper = mapper;
	}

	@Override
	public int selectTotalCount() {
		
		return mapper.selectTotalCount();
	}

	@Override
	public List<CancelExchangeRefundDTO> selectCancelExchangeRefundList(PageInfoDTO pageInfo, String userNo,
			int startRow, int endRow) {
		
		return mapper.selectCancelExchangeRefundList(pageInfo, userNo,
				startRow, endRow);
	}

	
	
}
