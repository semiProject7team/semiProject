package com.javaclass.basic.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.basic.vo.GoodsVO;
import com.javaclass.basic.vo.MemberVO;

@Repository
public class LoginDao {
	
	@Autowired
	private SqlSessionTemplate sql;
	
	public List<MemberVO> getMemberList(){
		return sql.selectList("managerMapper.memberList");
	}	
	
	public List<GoodsVO> getGoodsList(){
		return sql.selectList("managerMapper.getGoodsList");
	}
	
	public void InsertGoods(GoodsVO vo) {
		sql.insert("managerMapper.InsertGoods",vo);
	}
	
	//회원가입 기능 구현
	public int memberInsert(MemberVO vo) {
		System.out.println("===> managerMapper.xml에서 userInsert() 호출");
		return sql.insert("managerMapper.userInsert", vo);
	}
	
	//로그인 기능 구현
	public MemberVO loginCheck(MemberVO vo) {
		System.out.println("===> managerMapper.xml에서 loginCheck() 호출");
		return sql.selectOne("managerMapper.loginCheck", vo);
	}
	
	//아이디 중복확인
	public MemberVO idCheck(MemberVO vo) {
		System.out.println("===> managerMapper.xml에서 idCheck() 호출");
		return sql.selectOne("managerMapper.idCheck", vo);
	}
	
}
