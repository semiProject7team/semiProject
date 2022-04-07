package com.javaclass.basic.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.basic.dao.MemberDao;
import com.javaclass.basic.vo.GoodsVO;
import com.javaclass.basic.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDao dao;
	
	//userInsert 회원가입 함수 
	public int userInsert(MemberVO vo) {
		return dao.memberInsert(vo);
	}
	
	//loginCheck 로그인 확인 함수 
	public MemberVO loginCheck(MemberVO vo) {
		return dao.loginCheck(vo);
	}
	
	//idCheck_Login 아이디 중복체크 함수 
	public MemberVO idCheck_Login(MemberVO vo) {
		return dao.idCheck(vo);
	}
	
	//memberUpdate 회원정보 수정함수 
	public int memberUpdate(MemberVO vo) {
		return dao.memberUpdate(vo);
	}
	
	//memberDelete 회원탈퇴 함수 
	public int memberDelete(MemberVO vo) {
		return dao.memberDelete(vo);
	}
	
}
