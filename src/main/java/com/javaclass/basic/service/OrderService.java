package com.javaclass.basic.service;

import java.util.List;

import com.javaclass.basic.vo.GoodsVO;
import com.javaclass.basic.vo.OrderItemVO;
import com.javaclass.basic.vo.OrderPageItemVO;
import com.javaclass.basic.vo.OrderVO;

public interface OrderService {
	
	/* 주문 정보 */
	public List<OrderPageItemVO> getGoodsInfo(List<OrderPageItemVO> orders);
	
	/* 주문 */
	public void  order(OrderVO orvo);
	
	/* 주문번호 목록 */
	List<OrderVO> getOrderNo(OrderVO ovo);
	
	/* 주문상품 상세 목록 */
	List<OrderItemVO> getOrderItemList(OrderItemVO oivo);
	

}
