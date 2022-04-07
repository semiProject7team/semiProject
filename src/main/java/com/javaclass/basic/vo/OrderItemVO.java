package com.javaclass.basic.vo;

public class OrderItemVO {

	/* 주문 번호 */
	private String orderNo;
	
	/* 상품 번호 */
    private int goodsNo;
    
    /* Goods테이블의 상품 이름 */
    private String goodsName;
    
	/* 주문 수량 */
    private int ogCnt;
    
	/* vam_orderItem 기본키 */
    private int ogNo;
    
	

	/* 상품 한 개 가격 */
    private int goodsPrice;
    
    private int ogPrice;
    
	/* DB테이블 존재 하지 않는 데이터 */
    
	/* 총 가격(가격 * 주문 수량) */
    private int totalPrice;
    
    public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
    
    /* 최종가격 계산 함수*/
	public void initSaleTotal() {
		this.totalPrice = this.goodsPrice*this.ogCnt;
	}

	/* getter,setter */
	public String getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}

	public int getGoodsNo() {
		return goodsNo;
	}

	public void setGoodsNo(int goodsNo) {
		this.goodsNo = goodsNo;
	}

	public int getOgCnt() {
		return ogCnt;
	}

	public void setOgCnt(int ogCnt) {
		this.ogCnt = ogCnt;
	}

	public int getOgNo() {
		return ogNo;
	}

	public void setOgNo(int ogNo) {
		this.ogNo = ogNo;
	}

	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	
	public int getGoodsPrice() {
		return goodsPrice;
	}

	public void setGoodsPrice(int goodsPrice) {
		this.goodsPrice = goodsPrice;
	}

	public int getOgPrice() {
		return ogPrice;
	}

	public void setOgPrice(int ogPrice) {
		this.ogPrice = ogPrice;
	}

	@Override
	public String toString() {
		return "OrderItemVO [orderNo=" + orderNo + ", goodsNo=" + goodsNo + ", ogCnt=" + ogCnt + ", ogNo=" + ogNo
				+ ", goodsPrice=" + goodsPrice + ", ogPrice=" + ogPrice + ", totalPrice=" + totalPrice + "]";
	}

	
 

	
}
