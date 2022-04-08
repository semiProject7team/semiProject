package com.javaclass.basic.dao;

import com.javaclass.basic.vo.MemberVO;

public interface CartMemberDao {

	/* 주문자 주소 정보 */
	public MemberVO getMemberInfo(String memberId);
	
	//장바구니 아이디 체크  
	public MemberVO idCheck_cart(MemberVO vo);
}
