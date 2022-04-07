package com.javaclass.basic.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.basic.vo.ReviewVO;


@Repository("ReviewDao")
public class ReviewDaoImpl  {
	
	@Autowired
	private SqlSessionTemplate sql;
	
	public void InsertReview(ReviewVO vo) {
		System.out.println(vo.getGoodsNo());
		System.out.println(vo.getGoodsReview());
		
		sql.insert("reviewMapper.InsertReviews",vo);
	}
	
	public void SelectReviews (ReviewVO vo) {
		sql.selectOne("reviewMapper.SelectReivews",vo);
	}
	
	/*
	 * public List<ReviewVO> getReviewList(){ return
	 * sql.selectList("reviewMapper.getReviewList"); }
	 */

	public List<ReviewVO> getReviewList(HashMap h) {
		return sql.selectList("reviewMapper.getReviewList",h);
	}

	public ReviewVO getReview(ReviewVO vo) {
		
		return sql.selectOne("reviewMapper.getReview",vo);
	}
	
	public ReviewVO reviewContent(ReviewVO vo) {
		return sql.selectOne("reviewMapper.reviewContent",vo);
	}
	
	public void DeleteReview (ReviewVO vo) {
		sql.delete("reviewMapper.DeleteReview",vo);
	}

	public ReviewVO getReviewCnt() {
		return sql.selectOne("reviewMapper.countReview");
	}



}
