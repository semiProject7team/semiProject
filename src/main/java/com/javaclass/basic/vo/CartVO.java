package com.javaclass.basic.vo;

public class CartVO {
			//*****변수 설정할 때 주의*****/
			//spring에서 cartNO = db에서 cart_no
			/*mybatis-config.xml에서 
			 * <settings>
			 * <setting name="mapUnderscoreToCamelCase" value="true"/>
			 * </settings> 이렇게 해뒀기 때문에 가능  */
	
	
		/*cart table 컬럼*/
		private int cartNo; //장바구니번호 
	    private String memberId; //회원id
	    private int goodsNo; //상품번호 
	    private int cartCnt; //장바구니 개수 

	    //goods table 컬럼
	    private String goodsName;
	    private int goodsPrice;

	    // 추가
	    private int totalPrice;
	    
	    //총 가격 구하는 함수
	    public void initSaleTotal() {
	    	this.totalPrice = this.goodsPrice*this.cartCnt;
	    	
	    }
	    
	    
	    //getter/setter
		public int getCartNo() {
			return cartNo;
		}

		public void setCartNo(int cartNo) {
			this.cartNo = cartNo;
		}

		public String getMemberId() {
			return memberId;
		}

		public void setMemberId(String memberId) {
			this.memberId = memberId;
		}

		public int getGoodsNo() {
			return goodsNo;
		}

		public void setGoodsNo(int goodsNo) {
			this.goodsNo = goodsNo;
		}

		public int getCartCnt() {
			return cartCnt;
		}

		public void setCartCnt(int cartCnt) {
			this.cartCnt = cartCnt;
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
	
	    @Override
	    public String toString() {
	    	return "CartVO [cartNo=" + cartNo + ", memberId=" + memberId + ", goodsNo=" + goodsNo + ",cartCnt="
	    			+ cartCnt + ", goodsName=" + goodsName + ", goodsPrice=" + goodsPrice + ", totalPrice=" + totalPrice + "]";
	    }
	

}
