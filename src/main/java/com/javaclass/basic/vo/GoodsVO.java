package com.javaclass.basic.vo;

import java.io.File;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class GoodsVO {
	private int no;
	private int goodsNo;
	private int goodsCnt;
	private int goodsPrice;
	private int goodsTimes;
	private String goodsName;
	private String goodsSearch;
	private String goodsDetails;
	private String goodsFname;
	private String goodsFrname;
	private String goodsSize;
	MultipartFile  goodsFile;
	private String goodsDate;
		
	
	public GoodsVO() {}
	
	public String getGoodsSearch() {
		return goodsSearch;
	}

	public void setGoodsSearch(String goodsSearch) {
		this.goodsSearch = goodsSearch;
	}
	
	public String getGoodsDate() {
		return goodsDate;
	}

	public void setGoodsDate(String goodsDate) {
		this.goodsDate = goodsDate;
	}

	public MultipartFile getGoodsFile() {
		return goodsFile;
	}
	public void setGoodsFile(MultipartFile goodsFile) {
		
		if(!goodsFile.isEmpty()) {
			goodsFname = goodsFile.getOriginalFilename();
			goodsSize = String.valueOf(goodsFile.getSize())+" byte";
			
			goodsFrname = UUID.randomUUID().toString()+"_"+goodsFname;
			
			File file = new File("C:\\spring\\webwork\\7team_project\\src\\main\\webapp\\resources\\imgs\\goodsImg\\" + goodsFrname);
			
			try {
				goodsFile.transferTo(file);
			} catch (Exception e) {
				e.printStackTrace();
			} 
		}
		
		
				
	}
	
	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getGoodsNo() {
		return goodsNo;
	}
	public void setGoodsNo(int goodsNo) {
		this.goodsNo = goodsNo;
	}
	public int getGoodsCnt() {
		return goodsCnt;
	}
	public void setGoodsCnt(int goodsCnt) {
		this.goodsCnt = goodsCnt;
	}
	public int getGoodsPrice() {
		return goodsPrice;
	}
	public void setGoodsPrice(int goodsPrice) {
		this.goodsPrice = goodsPrice;
	}
	public int getGoodsTimes() {
		return goodsTimes;
	}
	public void setGoodsTimes(int goodsTimes) {
		this.goodsTimes = goodsTimes;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public String getGoodsDetails() {
		return goodsDetails;
	}
	public void setGoodsDetails(String goodsDetails) {
		this.goodsDetails = goodsDetails;
	}
	public String getGoodsFname() {
		return goodsFname;
	}
	public void setGoodsFname(String goodsFname) {
		this.goodsFname = goodsFname;
	}
	public String getGoodsFrname() {
		return goodsFrname;
	}
	public void setGoodsFrname(String goodsFrname) {
		this.goodsFrname = goodsFrname;
	}
	public String getGoodsSize() {
		return goodsSize;
	}
	public void setGoodsSize(String goodsSize) {
		this.goodsSize = goodsSize;
	}
	
	
	
}
