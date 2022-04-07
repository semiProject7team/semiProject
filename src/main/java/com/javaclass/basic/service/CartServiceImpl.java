package com.javaclass.basic.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.basic.dao.CartDao;
import com.javaclass.basic.vo.CartVO;

@Service("service") //컨트롤러엣서 부르는 이름과 같아야함
public class CartServiceImpl implements CartService {
	
	@Autowired //객체 올려야하는 것들한테 붙임
	private CartDao cartDao;
	
	
	@Override 
	public void addCart(CartVO cart)  {
		
		cartDao.addCart(cart);
	}
 
	@Override
	public void deleteCart(int cartNo) {
		
		cartDao.deleteCart(cartNo);
	}

	@Override
	public void modifyCount(CartVO cart) {
		
		cartDao.modifyCount(cart);;
	}

	@Override
	public List<CartVO> getCart(CartVO cart) {
		return cartDao.getCart(cart);
	}

	@Override
	public CartVO checkCart(CartVO cart) {
		//System.out.println("서비스까지왔음");
		return cartDao.checkCart(cart);
	}
	
	
	

	
}
