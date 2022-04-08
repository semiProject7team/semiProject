package com.javaclass.basic.service;

import com.javaclass.basic.vo.MemberVO;

public interface CartMemberService {
	
	/* 주문자 정보 */
	public MemberVO getMemberInfo(String memberId);
	
	//장바구니 아이디 체크  
	public MemberVO idCheck_cart(MemberVO vo);
	
}
