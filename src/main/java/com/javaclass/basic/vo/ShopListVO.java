package com.javaclass.basic.vo;

public class ShopListVO {
	private int no;
	private int shopNo;
	private String shopName;
	private String shopAddr;
	private String shopTel;
	private int locSn;
	private String shopDate;
	private String orderBy;
	private String shopListSearch;

	public ShopListVO() {}
	
	public String getShopListSearch() {
		return shopListSearch;
	}


	public void setShopListSearch(String shopListSearch) {
		this.shopListSearch = shopListSearch;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getShopDate() {
		return shopDate;
	}

	public void setShopDate(String shopDate) {
		this.shopDate = shopDate;
	}

	public int getShopNo() {
		return shopNo;
	}

	public void setShopNo(int shopNo) {
		this.shopNo = shopNo;
	}

	public String getShopName() {
		return shopName;
	}

	public void setShopName(String shopName) {
		this.shopName = shopName;
	}

	public String getShopAddr() {
		return shopAddr;
	}

	public void setShopAddr(String shopAddr) {
		this.shopAddr = shopAddr;
	}

	public String getOrderBy() {
		return orderBy;
	}

	public void setOrderBy(String orderBy) {
		this.orderBy = orderBy;
	}

	public String getShopTel() {
		return shopTel;
	}

	public void setShopTel(String shopTel) {
		this.shopTel = shopTel;
	}

	public int getLocSn() {
		return locSn;
	}

	public void setLocSn(int locSn) {
		this.locSn = locSn;
	}
	
	
	
}
