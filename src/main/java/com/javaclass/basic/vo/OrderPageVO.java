package com.javaclass.basic.vo;

import java.util.List;

public class OrderPageVO {
	
	/* 장바구니에서 구매 페이지로 정보 이동 시 필요한 VO */

	private List<OrderPageItemVO> orders;

	public List<OrderPageItemVO> getOrders() {
		return orders;
	}

	public void setOrders(List<OrderPageItemVO> orders) {
		this.orders = orders;
	}
	
	@Override
	public String toString() {
		return "OrderPageVO [orders=" + orders + "]";
	}
	
}
