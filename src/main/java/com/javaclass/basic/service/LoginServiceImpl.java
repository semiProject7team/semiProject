package com.javaclass.basic.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.basic.dao.LoginDao;
import com.javaclass.basic.vo.GoodsVO;
import com.javaclass.basic.vo.MemberVO;

@Service
public class LoginServiceImpl implements LoginService {
	
	@Autowired
	private LoginDao dao;
	
	public List<MemberVO> getMemberList(){
		return dao.getMemberList();
	}
	
	public List<GoodsVO> getGoodsList(){
		return dao.getGoodsList();
	}
	
	public void InsertGoods(GoodsVO vo) {
		dao.InsertGoods(vo);
	}
	
	//회원가입 함수 userInsert
	public int userInsert(MemberVO vo) {
		return dao.memberInsert(vo);
	}
	
	//로그인 확인 함수 loginCheck
	public MemberVO loginCheck(MemberVO vo) {
		return dao.loginCheck(vo);
	}
	
	//아이디 중복체크 함수 idCheck_Login
	public MemberVO idCheck_Login(MemberVO vo) {
		return dao.idCheck(vo);
		
		
		
	}
	
	
	
}
