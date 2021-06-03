package com.finalproj.missingitnow.admin.membermanage.model.service;

import java.util.List;
import java.util.Map;

import com.finalproj.missingitnow.admin.membermanage.model.dto.OrderDTO;
import com.finalproj.missingitnow.admin.membermanage.model.dto.UserDTO;
import com.finalproj.missingitnow.common.search.DetailSearchDTO;

public interface MemberManageService {

	int selectTotalCount(DetailSearchDTO search);

	List<UserDTO> selectUserList(DetailSearchDTO search);

	int selectOrderTotalCount(Map<String, Object> orderSearch);

	List<OrderDTO> selectOrderList(Map<String, Object> orderSearch);

}
