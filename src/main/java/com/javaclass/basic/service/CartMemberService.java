package com.javaclass.basic.service;

import com.javaclass.basic.vo.MemberVO;

public interface CartMemberService {
	
	/* 주문자 정보 */
	public MemberVO getMemberInfo(String memberId);
	
}
