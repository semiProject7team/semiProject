package com.javaclass.basic.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.basic.vo.CartVO;

@Repository("cartDao") //db연결하는 레포지토리이다
public class CartDaoImpl implements CartDao {
	
	@Autowired
	private SqlSessionTemplate mybatis;

	
	public void addCart(CartVO cart) {
		mybatis.insert("cartMapper.addCart",cart);
	}

	@Override
	public void deleteCart(int cartNo) {
		mybatis.delete("cartMapper.deleteCart",cartNo);
	}

	@Override
	public void modifyCount(CartVO cart) {
		mybatis.update("cartMapper.modifyCount", cart);
	}

	@Override
	public List<CartVO> getCart(CartVO cart) {
		//System.out.println("다오까지왔음");
		return mybatis.selectList("cartMapper.getCart", cart);
	}

	@Override
	public CartVO checkCart(CartVO cart) {
		return mybatis.selectOne("cartMapper.checkCart", cart);
	}

	@Override
	public void deleteOrderCart(CartVO cart) {
		mybatis.delete("cartMapper.deleteOrderCart",cart);		
	}

}
