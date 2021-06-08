package com.finalproj.missingitnow.member.model.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.finalproj.missingitnow.common.page.PageInfoDTO;
import com.finalproj.missingitnow.member.model.dto.CancelExchangeRefundDTO;

public interface CancelExchangeRefundMapper {

	int selectTotalCount();

	List<CancelExchangeRefundDTO> selectCancelExchangeRefundList(@Param("pageInfo")PageInfoDTO pageInfo 
			, @Param("userNo") String userNo
			, @Param("startRow") int startRow, @Param("endRow") int endRow);

}
