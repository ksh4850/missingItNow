package com.finalproj.missingitnow.member.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproj.missingitnow.common.page.PageInfoDTO;
import com.finalproj.missingitnow.member.model.dao.PurchaseListMapper;
import com.finalproj.missingitnow.member.model.dto.PurchasedListDTO;

@Service
public class PurchaseListServiceImpl implements PurchaseListService{
	
	private final PurchaseListMapper mapper;
	
	@Autowired
	public PurchaseListServiceImpl(PurchaseListMapper mapper) {
		super();
		this.mapper = mapper;
	}



	@Override
	public int selectTotalCount() {
		
		return mapper.selectTotalCount();
	}



	@Override
	public List<PurchasedListDTO> selectPurchaseList(PageInfoDTO pageInfo, String userNo, int startRow, int endRow) {
		
		return mapper.selectPurchaseList(pageInfo, userNo, startRow, endRow);
	}





	
	
}
