package com.finalproj.missingitnow.member.model.service;

import java.util.List;

import com.finalproj.missingitnow.common.page.PageInfoDTO;
import com.finalproj.missingitnow.member.model.dto.PurchasedListDTO;

public interface PurchaseListService {

	int selectTotalCount();

	List<PurchasedListDTO> selectPurchaseList(PageInfoDTO pageInfo, String userNo, int startRow, int endRow);

}
