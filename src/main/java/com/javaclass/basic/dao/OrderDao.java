package com.javaclass.basic.dao;

import java.util.List;

import com.javaclass.basic.vo.CartVO;
import com.javaclass.basic.vo.GoodsVO;
import com.javaclass.basic.vo.OrderItemVO;
import com.javaclass.basic.vo.OrderPageItemVO;
import com.javaclass.basic.vo.OrderVO;

public interface OrderDao {
	
	/* 주문 상품 정보(주문 페이지) */
	public OrderPageItemVO getGoodsInfo(int goodsNo);
	
	/* 주문 상품 정보(주문처리)*/
	public OrderItemVO getOrderInfo(int goodsNo);

	/* 주문 테이블 등록 */
	public int enrollOrder(OrderVO ordvo);
	
	/* 주문 아이템 테이블 등록 */
	public int enrollOrderItem(OrderItemVO orivo);
	
	/*주문번호 목록*/
	public List<OrderVO> getOrderNo(OrderVO ovo);
	
	/* 주문상품 상세 목록 */
	public List<OrderItemVO> getOrderItemList(OrderItemVO oivo);
	
}
