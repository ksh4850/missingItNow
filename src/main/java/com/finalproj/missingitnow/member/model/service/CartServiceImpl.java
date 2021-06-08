package com.finalproj.missingitnow.member.model.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.finalproj.missingitnow.common.page.PageInfoDTO;
import com.finalproj.missingitnow.member.model.dao.CartMapper;
import com.finalproj.missingitnow.member.model.dto.CartDTO;

@Service
public class CartServiceImpl implements CartService{

	private final CartMapper mapper;
	
	
	public CartServiceImpl(CartMapper mapper) {
		super();
		this.mapper = mapper;
	}


	@Override
	public int selectTotalCount() {

		return mapper.selectTotalCount();
	}


	@Override
	public List<CartDTO> selectCartList(PageInfoDTO pageInfo, String userNo, int startRow, int endRow) {
		
		return mapper.selectCartList(pageInfo, userNo, startRow , endRow);
	}


	@Override
	public int deleteCart(CartDTO cart) {
		
		return mapper.deleteCart(cart);
	}



}
