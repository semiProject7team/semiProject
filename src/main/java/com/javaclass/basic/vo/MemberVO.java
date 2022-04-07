package com.javaclass.basic.vo;

public class MemberVO {
	private int no;
	private String memberId;
	private String memberPass;
	private String memberName;
	private String memberGender;
	private String memberTel;
	private String memberAddr;
	private String memberAddr2;
	private int memberAddr3;
	private String memberOrder;
	private String memberGrade;
	private String memberSearch;
	
	@Override
	public String toString() {
		return "MemberVO [no=" + no + ", memberId=" + memberId + ", memberPass=" + memberPass + ", memberName="
				+ memberName + ", memberGender=" + memberGender + ", memberTel=" + memberTel + ", memberAddr="
				+ memberAddr + ", memberAddr2=" + memberAddr2 + ", memberAddr3=" + memberAddr3 + ", memberOrder="
				+ memberOrder + ", memberGrade=" + memberGrade + ", memberSearch=" + memberSearch + "]";
	}

	public MemberVO() {}
	
	public String getMemberSearch() {
		return memberSearch;
	}

	public void setMemberSearch(String memberSearch) {
		this.memberSearch = memberSearch;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getMemberPass() {
		return memberPass;
	}

	public void setMemberPass(String memberPass) {
		this.memberPass = memberPass;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getMemberGender() {
		return memberGender;
	}

	public void setMemberGender(String memberGender) {
		this.memberGender = memberGender;
	}

	public String getMemberTel() {
		return memberTel;
	}

	public void setMemberTel(String memberTel) {
		this.memberTel = memberTel;
	}

	public String getMemberAddr() {
		return memberAddr;
	}

	public void setMemberAddr(String memberAddr) {
		this.memberAddr = memberAddr;
	}

	public String getMemberAddr2() {
		return memberAddr2;
	}

	public void setMemberAddr2(String memberAddr2) {
		this.memberAddr2 = memberAddr2;
	}

	public int getMemberAddr3() {
		return memberAddr3;
	}

	public void setMemberAddr3(int memberAddr3) {
		this.memberAddr3 = memberAddr3;
	}

	public String getMemberOrder() {
		return memberOrder;
	}

	public void setMemberOrder(String memberOrder) {
		this.memberOrder = memberOrder;
	}

	public String getMemberGrade() {
		return memberGrade;
	}

	public void setMemberGrade(String memberGrade) {
		this.memberGrade = memberGrade;
	}
	
	
}
