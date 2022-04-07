package com.javaclass.basic.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.basic.vo.AddInfoVO;
/*import com.javaclass.basic.vo.CriteriaVO;*/
import com.javaclass.basic.vo.GoodsVO;
import com.javaclass.basic.vo.LocationVO;
/*import com.javaclass.basic.vo.MemberVO;*/
import com.javaclass.basic.vo.ShopListVO;

@Repository
public class shopListDao {
	
	@Autowired
	private SqlSessionTemplate sql;
	
	public List<ShopListVO> getShopList(){
		return sql.selectList("shopListMapper.getShopList");
	}	
	
	
	//public List<ShopListVO> getListByLocation(LocationVO vo){
	//	return sql.selectList("managerMapper.getListByLocation",vo);
	//}
	
	public List<ShopListVO> getSelectedLocation(ShopListVO vo){
		return sql.selectList("shopListMapper.getSelectedLocation",vo);
	}
	 
	 
	 public ShopListVO getAddInfo(ShopListVO vo){
		 return sql.selectOne("shopListMapper.getInfoByShopName",vo);
	 }
	 
	 
	 public ShopListVO getShopCnt() {
		 return sql.selectOne("shopListMapper.getShopCnt");
	 }
	
	 public List<ShopListVO> shopListPage(HashMap h){
		 return sql.selectList("shopListMapper.shopListPage",h);
	 }


	
	
	/*
	 * public List<LocationVO> getLocationList(){ return
	 * sql.selectList("managerMapper.getlocationList"); }
	 * 
	 * 
	 * public List<AddInfoVO> getInfoList() { return
	 * sql.selectList("managerMapper.getInfoList"); }
	 */
	
	
	/*
	 * public void InsertGoods(GoodsVO vo) {
	 * sql.insert("managerMapper.InsertGoods",vo); }
	 */
	
	/*
	 * @SuppressWarnings("unchecked") public List<Map<String, Object>>
	 * selectBoardList(CriteriaVO cri) { return
	 * (List<Map<String,Object>>)selectList("board.selectBoardList", cri); }
	 */
}
