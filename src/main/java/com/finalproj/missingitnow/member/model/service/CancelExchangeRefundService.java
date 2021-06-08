package com.finalproj.missingitnow.member.model.service;

import java.util.List;

import com.finalproj.missingitnow.common.page.PageInfoDTO;
import com.finalproj.missingitnow.member.model.dto.CancelExchangeRefundDTO;

public interface CancelExchangeRefundService {

	int selectTotalCount();

	List<CancelExchangeRefundDTO> selectCancelExchangeRefundList(PageInfoDTO pageInfo, String userNo, int startRow,
			int endRow);

}
