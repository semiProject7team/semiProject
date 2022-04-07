package com.javaclass.basic.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaclass.basic.service.CartMemberServiceImpl;
import com.javaclass.basic.service.OrderServiceImpl;
import com.javaclass.basic.vo.OrderItemVO;
import com.javaclass.basic.vo.OrderPageVO;
import com.javaclass.basic.vo.OrderVO;

@Controller
public class OrderController {
	
	@Autowired
	private OrderServiceImpl orderService;
	
	@Autowired
	private CartMemberServiceImpl memberService;
	
	
	
	/* 주문 상품 정보(주문 페이지) */
	@RequestMapping("{memberId}")
	public String orderPgaeGET(@PathVariable("memberId") String memberId, OrderPageVO opvo, Model model) {
		
		System.out.println("memberId : " + memberId);
		System.out.println("orders : " + opvo.getOrders());
		
		model.addAttribute("orderList", orderService.getGoodsInfo(opvo.getOrders()));
		model.addAttribute("memberInfo", memberService.getMemberInfo(memberId));
		
		return "/order/checkOut";
		
	}
	
	/*구매결과처리*/
	@RequestMapping("orderPagePost.do")
	public String orderPagePost(OrderVO ovo ,Model model) {
		System.out.println(ovo);
		orderService.order(ovo);
		return "/order/orderOk";
	} 
	
	/* session memberId연습용 */
	@RequestMapping("sesstest.do")
	public String loginOk(String memberId ,HttpSession session) {
		session.setAttribute("memberId", memberId);
		System.out.println(memberId);
		return "loginok";
	} 
	
	/* session의 memberId 기반의 구매리스트 가져오기*/
	@RequestMapping("orderNoList.do")
	public String orderlist(OrderVO ovo, Model model) {
		System.out.println("가져온 세션값 :" +ovo.getMemberId());
		model.addAttribute("orderNoList", orderService.getOrderNo(ovo)); 
		return "/order/orderList";
	}
	
	/*주문 번호 클릭시 주문 상세보기*/
	@RequestMapping("orderItemList.do")
	public String orderItemList(OrderItemVO oivo, Model model) {
		//System.out.println("가져온 주문번호 :" +oivo.getOrderNo());
		model.addAttribute("orderItemList", orderService.getOrderItemList(oivo)); 
		return "/order/orderItemList";
	}
}
