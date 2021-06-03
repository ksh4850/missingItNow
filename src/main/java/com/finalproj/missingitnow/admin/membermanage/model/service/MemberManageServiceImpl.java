package com.finalproj.missingitnow.admin.membermanage.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproj.missingitnow.admin.membermanage.model.dao.MemberManageMapper;
import com.finalproj.missingitnow.admin.membermanage.model.dto.OrderDTO;
import com.finalproj.missingitnow.admin.membermanage.model.dto.UserDTO;
import com.finalproj.missingitnow.common.search.DetailSearchDTO;

@Service("memberService")
public class MemberManageServiceImpl implements MemberManageService {

	private final MemberManageMapper mapper;
	
	@Autowired
	public MemberManageServiceImpl(MemberManageMapper mapper) {
		
		this.mapper = mapper;
		
	}
	
	@Override
	public int selectTotalCount(DetailSearchDTO search) {
		return mapper.selectTotalCount(search);
	}

	@Override
	public List<UserDTO> selectUserList(DetailSearchDTO search) {
		return mapper.selectUserList(search);
	}

	@Override
	public int selectOrderTotalCount(Map<String, Object> orderSearch) {
		return mapper.selectOrderTotalCount(orderSearch);
	}

	@Override
	public List<OrderDTO> selectOrderList(Map<String, Object> orderSearch) {
		return mapper.selectOrderList(orderSearch);
	}

}
