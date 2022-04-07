package com.javaclass.basic.vo;

public class LocationVO {
	private int no;
	private int locSn;
	private String locName;
	private String locSearch;

	public LocationVO() {}
	
	public String getLocSearch() {
		return locSearch;
	}

	public void setLocSearch(String locSearch) {
		this.locSearch = locSearch;
	}
	
	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getLocSn() {
		return locSn;
	}

	public void setLocSn(int locSn) {
		this.locSn = locSn;
	}

	public String getLocName() {
		return locName;
	}

	public void setLocName(String locName) {
		this.locName = locName;
	}
	
	
}
