package com.javaclass.basic.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.basic.dao.CartMemberDao;
import com.javaclass.basic.vo.MemberVO;

@Service
public class CartMemberServiceImpl implements CartMemberService {
	
	@Autowired 
	private CartMemberDao memberDao2;
	
	/* 주문자 정보 */
	@Override
	public MemberVO getMemberInfo(String memberId) {
		return memberDao2.getMemberInfo(memberId);
	}

}
