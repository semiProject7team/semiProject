package com.javaclass.basic.service;

import java.util.HashMap;
import java.util.List;
/*import java.util.Map;*/

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.basic.dao.shopListDao;
import com.javaclass.basic.vo.AddInfoVO;

/*import com.javaclass.basic.vo.GoodsVO;*/
/*import com.javaclass.basic.vo.LocationVO;*/
/*import com.javaclass.basic.vo.MemberVO;*/
import com.javaclass.basic.vo.ShopListVO;

@Service
public class shopListServiceImpl implements shopListService {
	
	@Autowired
	private shopListDao dao;
	
	
	
	
	  public List<ShopListVO> getShopList(){
		  return dao.getShopList(); 
	  }
	  
		
		public List<ShopListVO> getSelectedLocation(ShopListVO vo){
		  return dao.getSelectedLocation(vo);
		 }
		 
	  
	  public ShopListVO getAddInfo(ShopListVO vo){
		  return dao.getAddInfo(vo);
	  }
	  
	  
	
	  
	  public ShopListVO getShopCnt() {
		  return dao.getShopCnt();
	  }

	  public List<ShopListVO> shopListPage(HashMap h){
		  return dao.shopListPage(h);
	  }





	  




	  
	 
	 
	
	
	
	
	/*
	 * public List<LocationVO> getLocationList(){ return dao.getLocationList(); }
	 * 
	 * public List<AddInfoVO> getInfoList() { return dao.getInfoList(); }
	 */
	
	
	
	/*
	 * public void InsertGoods(GoodsVO vo) { dao.InsertGoods(vo); }
	 */
	
	/*
	 * @Override public List<Map<String, Object>> selectBoardList(CriteriaVO cri) {
	 * return ManagerDao.selectBoardList(cri);
	 */


	
	
}
