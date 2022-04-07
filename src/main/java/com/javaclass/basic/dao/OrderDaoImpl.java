package com.javaclass.basic.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.basic.vo.GoodsVO;
import com.javaclass.basic.vo.OrderItemVO;
import com.javaclass.basic.vo.OrderPageItemVO;
import com.javaclass.basic.vo.OrderVO;

@Repository("orderDao")
public class OrderDaoImpl implements OrderDao {
	
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public OrderPageItemVO getGoodsInfo(int goodsNo) {
		return mybatis.selectOne("orderMapper.getGoodsInfo2", goodsNo);
	}

	@Override
	public OrderItemVO getOrderInfo(int goodsNo) {
		return mybatis.selectOne("orderMapper.getOrderInfo", goodsNo);
	}

	@Override
	public int enrollOrder(OrderVO ordvo) {
		return mybatis.insert("orderMapper.enrollOrder",ordvo);
	}

	@Override
	public int enrollOrderItem(OrderItemVO orivo) {
		return mybatis.insert("orderMapper.enrollOrderItem",orivo);
	}

	/* 주문번호 목록 */
	@Override
	public List<OrderVO> getOrderNo(OrderVO ovo) {
		return mybatis.selectList("orderMapper.getOrderNo", ovo);
	}
	
	/* 주문상품 상세 목록 */
	@Override
	public List<OrderItemVO> getOrderItemList(OrderItemVO oivo) {
		return mybatis.selectList("orderMapper.getOrderItemList", oivo);
	}

	
	

}
