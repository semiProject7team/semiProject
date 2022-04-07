package com.javaclass.basic.dao;

import java.util.List;

import com.javaclass.basic.vo.CartVO;


public interface CartDao {
	
	/*카트 추가*/
	public void addCart(CartVO cart);
	
	/*카트 삭제*/
	public void deleteCart(int cartNo);
	
	/*카트 수량 수정*/
	public void modifyCount(CartVO cart);
	
	/*카트 목록*/
	public List<CartVO> getCart(CartVO cart);
	
	/*카트 확인*/
	public CartVO checkCart(CartVO cart);
	
	/* 카트 제거(주문) */
	public void deleteOrderCart(CartVO cart);
	
}
