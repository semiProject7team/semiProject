package com.javaclass.basic.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.basic.vo.MemberVO;

@Repository("memberDao2")
public class CartMemberDaoImpl implements CartMemberDao {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public MemberVO getMemberInfo(String memberId) {
		return mybatis.selectOne("memberMapper2.getMemberInfo2", memberId);
	}

}
