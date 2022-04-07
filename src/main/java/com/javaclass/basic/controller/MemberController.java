package com.javaclass.basic.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.javaclass.basic.service.MemberServiceImpl;
import com.javaclass.basic.vo.MemberVO;

//MemberController
@Controller
public class MemberController {

	@Autowired
	private MemberServiceImpl service;


	 
	  
	  @RequestMapping("/{step}.do") public String view(@PathVariable String step) {
	  return step; }
	 

	// 회원가입
	@RequestMapping("userInsert.do")
	public String memberInsert(MemberVO vo) {
		service.userInsert(vo); // 서비스에 있는 userInsert 함수 호출
		return ("redirect:userJoin_ok.do"); // 회원가입 완료 페이지 리턴
	}

	// 로그인하기
	@RequestMapping("login.do")
	public String login(MemberVO vo, HttpSession session, RedirectAttributes rttr) {
		MemberVO result = service.loginCheck(vo);

		if (result == null) {
			rttr.addFlashAttribute("msg", false);
			
			return "redirect:userLogin.do"; // 로그인 실패시 로그인 페이지 리턴
		} else if(vo.getMemberId().equals("관리자")) {
			return "redirect:/manager/manager_member.do";
		}
		
		
			
			// 로그인 성공한 사용자 이름을 세션에 저장
			session.setAttribute("memberName", result.getMemberName()); // 멤버이름 세션 저장
			session.setAttribute("memberId", result.getMemberId());// 멤버아이디 세션 저장
			session.setAttribute("memberPass", result.getMemberPass());
			session.setAttribute("memberTel", result.getMemberTel());
			session.setAttribute("memberAddr", result.getMemberAddr());
			session.setAttribute("memberAddr2", result.getMemberAddr2());
			session.setAttribute("memberAddr3", result.getMemberAddr3());
		
			return "redirect:login_ok.do"; // 로그인 성공 페이지 리턴
			
			

			
		
	}

	// 아이디 중복 확인(에이작스)
	@RequestMapping(value = "idCheck.do", produces = "application/text;charset=utf-8") // 한글처리
	@ResponseBody // 에이작스 뷰페이지 변경하지 않게 붙여줌
	// 에이작스 요청 받아줘야 함
	public String idCheck(MemberVO vo) { // 에이작스 data : {memberID} 값 받음
		// 에이작스 결과 지정
		String result = "사용가능한 아이디입니다."; // 에이작스 결과
		MemberVO remem = service.idCheck_Login(vo);
		if (remem != null) {
			result = "중복된 아이디가 있습니다.";
		}
		return result;
	}

	// 회원정보 수정
	@RequestMapping("memberModify.do")
	public String memberModify(MemberVO vo, HttpSession session, Model m) {
		// 세션안에 있는 아이디, 이름 변수에 저장
		String memberId = (String) session.getAttribute("memberId");
		String memberName = (String) session.getAttribute("memberName");

		// 아이디, 이름을 MemberVO에 담기
		MemberVO memberVO = new MemberVO();
		memberVO.setMemberId(memberId);
		memberVO.setMemberName(memberName);

		m.addAttribute("memberVO", memberVO);
		vo.setMemberId(memberId);

		service.memberUpdate(vo); // 회원정보 수정하는 함수 호출

		session.invalidate();// 세션 끊기 => 수정된 정보를 다시 가져와야 하므로 로그인 다시 해야함

		return "redirect:userLogin.do";
	}

	// 로그아웃 기능
	@RequestMapping("logout.do")
	public String logOut(HttpSession session) throws Exception {
		session.invalidate();// 세션 끊기
		return "redirect:index.jsp"; // 메인 페이지 리턴
	}

	// 회원탈퇴
	@RequestMapping(value = "delete2.do")
	public String deleteMember(MemberVO vo, HttpSession session, Model m, RedirectAttributes rttr) {
		// 세션에 있는 아이디와 비밀번호 변수에 저장
		String sessId = (String) session.getAttribute("memberId");
		String sessPass = (String) session.getAttribute("memberPass");

		// 아이디, 이름을 MemberVO에 담기
		MemberVO memberVO = new MemberVO();
		memberVO.setMemberId(sessId);

		m.addAttribute("memberVO", memberVO);
		vo.setMemberId(sessId);

		// vo로 들어오는 비밀번호
		String voPass = vo.getMemberPass();

		// 세션비밀번호와 vo비밀번호 비교
		if (!(sessPass.equals(voPass))) {
			rttr.addFlashAttribute("msg", false);
			return "redirect:memberDelete.do";
		}

		service.memberDelete(vo);// 서비스 memberDelete 함수 호출
		session.invalidate();// 세션끊기
		return "redirect:delete_ok.do"; // 회원탈퇴 완료 페이지 리턴
	}

}
