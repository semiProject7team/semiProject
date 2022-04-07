package com.javaclass.basic.service;

import java.util.List;

import com.javaclass.basic.vo.CartVO;

public interface CartService {
	
	/*카트 추가*/
	void addCart(CartVO cart);
	
	/*카트 삭제*/
	void deleteCart(int cartNo);
	
	/*카트 수량 수정*/
	void modifyCount(CartVO cart);
	
	/*카트 목록*/
	List<CartVO> getCart(CartVO cart);
	
	/*카트 확인*/
	CartVO checkCart(CartVO cart);
	
}
