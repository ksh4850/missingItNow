package com.finalproj.missingitnow.member.model.service;

import java.util.List;

import com.finalproj.missingitnow.common.page.PageInfoDTO;
import com.finalproj.missingitnow.member.model.dto.CartDTO;

public interface CartService {

	int selectTotalCount();

	List<CartDTO> selectCartList(PageInfoDTO pageInfo, String userNo, int startRow, int endRow);

	int deleteCart(CartDTO cart);


}
