package com.javaclass.basic.controller;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaclass.basic.service.ReviewServiceImpl;
import com.javaclass.basic.vo.ReviewVO;

@Controller
public class ReviewController {

	@Autowired
	private ReviewServiceImpl reviewService;

	/* 상품 목록 페이지 */
	@RequestMapping("list.do")
	public void list() {
		
	}
	
	

	/* 후기 페이지 */
	@RequestMapping("review.do")
	public void review(ReviewVO vo, Model m, String page) {

		if (page == null) {
			page = "1";
		}
		int pageNum = Integer.parseInt(page);
		int first = 10 * pageNum - 9;
		int end = 10 * pageNum;
		HashMap h = new HashMap();
		h.put("FIRST", first);
		h.put("END", end);

		m.addAttribute("reviewList", reviewService.getReviewList(h));
		m.addAttribute("reviewList2", reviewService.getReview(vo));
		m.addAttribute("recordCnt", reviewService.getReviewCnt());

	}


	/* 후기 입력 */
	@RequestMapping("reviewSave.do")
	public String reviewSave(ReviewVO vo) {
		reviewService.InsertReview(vo);
		return "redirect:review.do";
	}

	/*
	 * 상세 후기 보기 ajax
	 */
	@RequestMapping(value = "reviewContent.do", produces = "application/text; charset=UTF-8")
	@ResponseBody
	public String reviewContent(ReviewVO vo) {
		return reviewService.reviewContent(vo).getReviewContent();
	}

	/*
	 * review 삭제 deleteReview.do
	 */
	@RequestMapping(value = "deleteReview.do")

	public String deleteReview(ReviewVO vo) {
		reviewService.DeleteReview(vo);
		return "redirect:review.do";
	}
	
	
	/* 상품 상세 페이지 1 */
	@RequestMapping("detail1.do")
	public void detail1() {
		
	}
	
	/* 상품 상세 페이지 2 */
	@RequestMapping("detail2.do")
	public void detail2() {
		
	}
	
	/* 상품 상세 페이지 3 */
	@RequestMapping("detail3.do")
	public void detail3() {
		
	}
	
	/* 상품 상세 페이지 4 */
	@RequestMapping("detail4.do")
	public void detail4() {
		
	}
	
	/* 상품 상세 페이지 5 */
	@RequestMapping("detail5.do")
	public void detail5() {
		
	}
	
	/* 상품 상세 페이지 6 */
	@RequestMapping("detail6.do")
	public void detail6() {
		
	}
	
	/* 상품 상세 페이지 7 */
	@RequestMapping("detail7.do")
	public void detail7() {
		
	}
	
	/* 상품 상세 페이지 8 */
	@RequestMapping("detail8.do")
	public void detail8() {
		
	}
	
	/* 상품 상세 페이지 9 */
	@RequestMapping("detail9.do")
	public void detail9() {
		
	}
	
	

}


