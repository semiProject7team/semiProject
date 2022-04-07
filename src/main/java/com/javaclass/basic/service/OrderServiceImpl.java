package com.javaclass.basic.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.javaclass.basic.dao.CartDao;
import com.javaclass.basic.dao.CartMemberDao;
import com.javaclass.basic.dao.OrderDao;
import com.javaclass.basic.vo.CartVO;
import com.javaclass.basic.vo.GoodsVO;
import com.javaclass.basic.vo.MemberVO;
import com.javaclass.basic.vo.OrderItemVO;
import com.javaclass.basic.vo.OrderPageItemVO;
import com.javaclass.basic.vo.OrderVO;

@Service("orderService")
public class OrderServiceImpl implements OrderService {

	@Autowired // 객체 올려야하는 것들한테 붙임
	private OrderDao orderDao;

	@Autowired
	private CartMemberDao memberDao;

	@Autowired
	private CartDao cartDao;

	public List<OrderPageItemVO> getGoodsInfo(List<OrderPageItemVO> orders) {
		List<OrderPageItemVO> result = new ArrayList<OrderPageItemVO>();
		for (OrderPageItemVO orvo : orders) {
			OrderPageItemVO goodsInfo = orderDao.getGoodsInfo(orvo.getGoodsNo());
			goodsInfo.setOgCnt(orvo.getOgCnt());
			goodsInfo.initSaleTotal();
			result.add(goodsInfo);
		}
		return result;
	}
	
	/* 구매결과 처리 */
	@Override
	@Transactional
	public void order(OrderVO orvo) {

		/* 사용할 데이터가져오기 */
		/* 회원 정보 */
		MemberVO member = memberDao.getMemberInfo(orvo.getMemberId());
		/* 주문 정보 */
		List<OrderItemVO> ords = new ArrayList<>();
		for (OrderItemVO oit : orvo.getOrders()) {
			OrderItemVO orderItem = orderDao.getOrderInfo(oit.getGoodsNo());
			//주문번호 셋팅
			orderItem.setOrderNo(oit.getOrderNo());
			// 수량 셋팅
			orderItem.setOgCnt(oit.getOgCnt());
			// 가격 셋팅
			orderItem.setOgPrice(oit.getGoodsPrice());
			// 기본정보 셋팅
			orderItem.initSaleTotal();
			// List객체 추가
			ords.add(orderItem);
		}
		/* OrderDTO 셋팅 */
		orvo.setOrders(ords);
		orvo.getOrderPriceInfo();

		/*DB 주문,주문상품(,배송정보) 넣기*/
		
		/* orderId만들기 및 OrderDTO객체 orderId에 저장 */
		Date date = new Date();
		SimpleDateFormat format = new SimpleDateFormat("_yyyyMMddmm");
		String orderNo = member.getMemberId() + format.format(date);
		orvo.setOrderNo(orderNo);
		

		/* db넣기 */
		orderDao.enrollOrder(orvo); // vam_order 등록
		for (OrderItemVO oit : orvo.getOrders()) { // vam_orderItem 등록
			oit.setOrderNo(orderNo);
			orderDao.enrollOrderItem(oit);
		}


		/* 장바구니 제거 */
		for (OrderItemVO oit : orvo.getOrders()) {
			CartVO dto = new CartVO();
			dto.setMemberId(orvo.getMemberId());
			dto.setGoodsNo(oit.getGoodsNo());

			cartDao.deleteOrderCart(dto);
		}

	} //order 
	
	/* 주문번호 목록 */
	@Override
	public List<OrderVO> getOrderNo(OrderVO ovo) {
		return orderDao.getOrderNo(ovo);
	}
	
	/* 주문상품 상세 목록 */
	
	@Override
	public List<OrderItemVO> getOrderItemList(OrderItemVO oivo) {
		return orderDao.getOrderItemList(oivo);
	}


}
