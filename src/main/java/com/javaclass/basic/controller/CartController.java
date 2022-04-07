package com.javaclass.basic.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaclass.basic.service.CartServiceImpl;
import com.javaclass.basic.vo.CartVO;

@Controller
public class CartController {
	
	@Autowired
	private CartServiceImpl service ;
	
	/*
	 * @RequestMapping("/{step}.do") public String view(@PathVariable String step) {
	 * return step; }
	 */
	
	//장바구니에 담기
	@RequestMapping("add.do")
	public String add(CartVO vo) {
		service.addCart(vo);
		return "/cart/add";
		
	}	
	
	// 장바구니 목록 검색
	@RequestMapping("cart.do")
	public String getCart(CartVO vo, Model model) {
	model.addAttribute("cartList", service.getCart(vo)); 
	return "/cart/cart";
	}

	//장바구니 수량 바꾸기 
	@RequestMapping("update.do")
	public String updateCartPost(CartVO vo) {
		//System.out.println("update까지 완료");
		service.modifyCount(vo);
		//System.out.println("맵퍼까지 완료 후 view보여줄 단계");
		return "redirect:cart.do?memberId="+vo.getMemberId();
	}

	/* 장바구니 수량 삭제 */
	@RequestMapping("delete.do")
	public String deleteCartPOST(CartVO vo) {

		service.deleteCart(vo.getCartNo());
		return "redirect:cart.do?memberId="+vo.getMemberId();

	}
	
		
 }
