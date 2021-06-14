package com.finalproj.missingitnow.corpMng.model.dao;

import java.util.List;
import java.util.Map;

import com.finalproj.missingitnow.common.page.PageInfoDTO;
import com.finalproj.missingitnow.corpMng.model.dto.CorpMngNoticeDTO;
import com.finalproj.missingitnow.corpMng.model.dto.CorpUserDTO;
import com.finalproj.missingitnow.corpMng.model.dto.ProdCmtListDTO;
import com.finalproj.missingitnow.corpMng.model.dto.ProdMngProductDTO;
import com.finalproj.missingitnow.corpMng.model.dto.ProdRevListDTO;
import com.finalproj.missingitnow.corpMng.model.dto.SalesMngOrderDTO;

public interface CorpMngMainDAO {

	// 정보 수정을 위한 정보 select
	CorpUserDTO selectCorpUserInfo(CorpUserDTO corpUser);
	
	// 기업회원 정보 수정
	int updateCorpUserInfo(CorpUserDTO corpUser);
	int deleteCorpUserImg(CorpUserDTO corpUser);
	int updateCorpUserImg(Map<String, String> file);
	
	// 최근 공지 
	List<CorpMngNoticeDTO> selectRecentNoticeList();
	
	// 판매자정보 - 예치금 잔액 조회 
	int selectDepositTotal(CorpUserDTO corpUserSession);

	// 최근 등록 상품
	List<ProdMngProductDTO> selectRecentProductList(CorpUserDTO corpUserSession);

	// 주문 상태
	SalesMngOrderDTO selectCountOrderStatus(CorpUserDTO corpUserSession);

	// 최근 상품 문의
	List<ProdCmtListDTO> selectRecentProductCmtList(CorpUserDTO corpUserSession);

	// 최근 상품 리뷰
	List<ProdRevListDTO> selectRecentProductRevList(CorpUserDTO corpUserSession);
	
	// 공지사항 조회
	int selectTotalNoticeList();
	List<CorpMngNoticeDTO> selectNoticeList(PageInfoDTO pageInfo);

	

}
