package com.javaclass.basic.vo;

import java.util.Date;
import java.util.List;

public class OrderVO {
	
	/* 사용자 구매 정보를 DB에 저장하기위한 VO orders테이블 기반*/
	
	/* 주문 번호 */
	private String orderNo;
	
	/* 배송 받는이 */
	private String addrName;
	
	/* 주문 회원 아이디 */
	private String memberId;
	
	/* 우편번호 */
	private int orderAddr;
	
	/* 회원 주소 */
	private String orderAddr2;
	
	/* 회원 상세주소 */
	private String orderAddr3;
	
	/* 주문 날짜 */
	private Date orderDate;
	
	/* DB테이블 존재 하지 않는 데이터 */
	
	/* 주문 상품 */
	private List<OrderItemVO> orders;	
	
	/* 배송비 */
	private int deliveryCost;
	
	/* 판매가(모든 상품 비용) */
	private int orderSalePrice;
	
	/* 최종 판매 비용 */
	private int orderFinalSalePrice;

	/*최종 판매 비용을 위한 메소드*/
	public void getOrderPriceInfo() {
		/* 상품 비용 & 적립포인트 */
			for(OrderItemVO order : orders) {
				orderSalePrice += order.getTotalPrice();
			}
		/* 배송비용 */
			if(orderSalePrice >= 30000) {
				deliveryCost = 0;
			} else {
				deliveryCost = 3000;
			}
		/* 최종 비용(상품 비용 + 배송비) */
			orderFinalSalePrice = orderSalePrice + deliveryCost;
	}
	
	/*getter,setter*/
	public String getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}

	public String getAddrName() {
		return addrName;
	}

	public void setAddrName(String addrName) {
		this.addrName = addrName;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
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

	public List<OrderItemVO> getOrders() {
		return orders;
	}

	public void setOrders(List<OrderItemVO> orders) {
		this.orders = orders;
	}

	public int getDeliveryCost() {
		return deliveryCost;
	}

	public void setDeliveryCost(int deliveryCost) {
		this.deliveryCost = deliveryCost;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public int getOrderSalePrice() {
		return orderSalePrice;
	}

	public void setOrderSalePrice(int orderSalePrice) {
		this.orderSalePrice = orderSalePrice;
	}

	public int getOrderFinalSalePrice() {
		return orderFinalSalePrice;
	}

	public void setOrderFinalSalePrice(int orderFinalSalePrice) {
		this.orderFinalSalePrice = orderFinalSalePrice;
	}

	@Override
	public String toString() {
		return "OrderVO [orderNo=" + orderNo + ", addrName=" + addrName + ", memberId=" + memberId + ", orderAddr="
				+ orderAddr + ", orderAddr2=" + orderAddr2 + ", orderAddr3=" + orderAddr3 + ", orders=" + orders
				+ ", deliveryCost=" + deliveryCost + ", orderDate=" + orderDate + ", orderSalePrice=" + orderSalePrice
				+ ", orderFinalSalePrice=" + orderFinalSalePrice + "]";
	}
	
	

}
