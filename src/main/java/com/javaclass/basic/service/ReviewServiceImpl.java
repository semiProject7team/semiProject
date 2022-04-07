package com.javaclass.basic.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.basic.dao.ReviewDaoImpl;
import com.javaclass.basic.dao.ReviewDaoImpl;
import com.javaclass.basic.vo.ReviewVO;


@Service
public class ReviewServiceImpl implements ReviewService {
	
	@Autowired
	private ReviewDaoImpl dao;
	
	

	
	public void InsertReview(ReviewVO vo) {
		dao.InsertReview(vo);
		
	}
	
	public void DeleteReview(ReviewVO vo) {
		dao.DeleteReview(vo);
		
	}

	

	

	public List<ReviewVO> getReviewList(HashMap h) {
		
		return dao.getReviewList(h);
	}

	public ReviewVO getReview(ReviewVO vo) {
		return dao.getReview(vo);  //select review_content from review where review_no 
	}
	
	/*
	 * public List<ReviewVO> getReviewList(HashMap map) { return
	 * dao.getReviewList();
	 * 
	 * }
	 */

	public ReviewVO reviewContent(ReviewVO vo) {
		return dao.reviewContent(vo);
	}
	
	public ReviewVO getReviewCnt() {
		return dao.getReviewCnt();
	}
	

	

	
}
