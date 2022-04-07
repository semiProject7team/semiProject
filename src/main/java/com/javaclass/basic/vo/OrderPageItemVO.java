package com.javaclass.basic.vo;

public class OrderPageItemVO {
	
	/* 주문 페이지에 정보 입력을 위한 VO*/
	
	//*****변수 설정할 때 주의*****/
	//spring에서 cartNO = db에서 cart_no
	/*mybatis-config.xml에서 
	 * <settings>
	 * <setting name="mapUnderscoreToCamelCase" value="true"/>
	 * </settings> 이렇게 해뒀기 때문에 가능  */
	
	/* 뷰로부터 전달받을 값 */
    private int goodsNo;
    
    private int ogCnt;
    
	/* DB로부터 꺼내올 값 */
    private String goodsName;
    
    private int goodsPrice;
    
	/* 만들어 낼 값 */
    private int totalPrice;
    
    /* 최종 가격 세팅 */
    public void initSaleTotal() {
		this.totalPrice = this.goodsPrice*this.ogCnt;
	}

    @Override
	public String toString() {
		return "OrderPageItemVO [goodsNo=" + goodsNo + ", ogCnt=" + ogCnt + ", goodsName=" + goodsName
				+ ", goodsPrice=" + goodsPrice + ", totalPrice=" + totalPrice + "]";
	}
    
    //getter/setter
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

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public int getGoodsPrice() {
		return goodsPrice;
	}

	public void setGoodsPrice(int goodsPrice) {
		this.goodsPrice = goodsPrice;
	}

	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
   

    
    
}
