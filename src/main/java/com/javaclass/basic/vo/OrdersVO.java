package com.javaclass.basic.vo;

public class OrdersVO {
	private int orderNo;
	private String addrName;
	private int orderAddr;
	private String orderAddr2;
	private String orderAddr3;
	private String orderTel;
	private String orderDate;
	private String memberId;
	
	public OrdersVO() {}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	public String getAddrName() {
		return addrName;
	}

	public void setAddrName(String addrName) {
		this.addrName = addrName;
	}

	public int getOrderAddr() {
		return orderAddr;
	}

	public void setOrderAddr(int orderAddr) {
		this.orderAddr = orderAddr;
	}

	public String getOrderAddr2() {
		return orderAddr2;
	}

	public void setOrderAddr2(String orderAddr2) {
		this.orderAddr2 = orderAddr2;
	}

	public String getOrderAddr3() {
		return orderAddr3;
	}

	public void setOrderAddr3(String orderAddr3) {
		this.orderAddr3 = orderAddr3;
	}

	public String getOrderTel() {
		return orderTel;
	}

	public void setOrderTel(String orderTel) {
		this.orderTel = orderTel;
	}

	public String getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	
}
