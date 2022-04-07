package com.javaclass.basic.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.basic.vo.GoodsVO;
import com.javaclass.basic.vo.MemberVO;

@Repository
public class MemberDao {
	
	@Autowired
	private SqlSessionTemplate sql;
		
	//회원가입 기능 구현
	public int memberInsert(MemberVO vo) {
		System.out.println("===> MemberMapper.xml에서 userInsert() 호출");
		return sql.insert("MemberMapper.userInsert", vo);
	}
	
	//로그인 기능 구현
	public MemberVO loginCheck(MemberVO vo) {
		System.out.println("===> MemberMapper.xml에서 loginCheck() 호출");
		return sql.selectOne("MemberMapper.loginCheck", vo);
	}
	
	//아이디 중복확인
	public MemberVO idCheck(MemberVO vo) {
		System.out.println("===> MemberMapper.xml에서 idCheck() 호출");
		return sql.selectOne("MemberMapper.idCheck", vo);
	}
	
	//회원정보 수정
	//서비스에서 보낸 파라미터들을 memberUpdate(MemberVO vo)에 담기
	public int memberUpdate(MemberVO vo) {
		System.out.println("===> MemberMapper.xml에서 memberUpdate() 호출");
		return sql.update("MemberMapper.memberUpdate", vo);
	}
	
	//회원탈퇴
	public int memberDelete(MemberVO vo) {
		System.out.println("===> MemberMapper.xml에서 memberDelete() 호출");
		return sql.delete("MemberMapper.memberDelete", vo);
	}

}
