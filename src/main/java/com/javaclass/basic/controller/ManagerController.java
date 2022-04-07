package com.javaclass.basic.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaclass.basic.service.ManagerServiceImpl;
import com.javaclass.basic.vo.AddInfoVO;
import com.javaclass.basic.vo.GoodsVO;
import com.javaclass.basic.vo.LocationVO;
import com.javaclass.basic.vo.MemberVO;
import com.javaclass.basic.vo.OrderGoodsVO;
import com.javaclass.basic.vo.OrdersVO;
import com.javaclass.basic.vo.ShopListVO;
import com.javaclass.basic.vo.SizeVO;

@Controller
@RequestMapping("/manager")
public class ManagerController {

	@Autowired
	private ManagerServiceImpl service ;

	@RequestMapping("/{step}.do")
	public String view(@PathVariable String step) {
		return "/manager/" + step;
	}
	
	
/***************************************************회원관리******************************************************/
	
	/*parameter page=1 해당화면*/
	
	@RequestMapping("manager_member.do")
	public void managerMember(Model m,String page) {
		m.addAttribute("getMemberCount", service.getMemberCount());
		if(page==null) {
			page="1";
		}
		int p = Integer.parseInt(page);
		HashMap h = new HashMap();
		h.put("FIRST", 10*p-9);
		h.put("LAST", 10*p);
		m.addAttribute("getMemberList", service.getPageMemberList(h));
	}
	
	/*회원정보 검색 ajax */

	@RequestMapping(value="memberSearch.do",produces = "application/text; charset=UTF-8")
	@ResponseBody
	public String memberSearch(MemberVO vo,String page ) {

		String result = "";
		if(vo.getMemberSearch() == "") {
			if(page==null) {
				page="1";
			}
			int p = Integer.parseInt(page);
			HashMap h = new HashMap();
			h.put("FIRST", 10*p-9);
			h.put("LAST", 10*p);
			for(MemberVO vvv : service.getPageMemberList(h)) {
				result += "<tr>\r\n" + 
						"															<td>"+vvv.getNo()+"</td>\r\n" + 
						"															<td>"+vvv.getMemberId()+"</td>\r\n" + 													
						"															<td><a href='manager_memberView.do?memberId="+vvv.getMemberId()+"'>"+vvv.getMemberName()+"</a></td>\r\n" +
						"															<td>"+vvv.getMemberGender()+"</td>\r\n" + 
						"															<td>"+vvv.getMemberTel()+"</td>\r\n" + 
						"															<td>"+vvv.getMemberAddr()+"</td>\r\n" + 
						"															<td>"+vvv.getMemberAddr2()+"</td>\r\n" + 
						"															<td>"+vvv.getMemberAddr3()+"</td>\r\n" + 
						"															<td>"+vvv.getMemberOrder()+"</td>\r\n" + 
						"															<td>"+vvv.getMemberGrade()+"</td>\r\n" + 
						"														</tr>";
			}
		}else {
			for(MemberVO vv : service.memberSearch(vo)) {
				result += "<tr>\r\n" + 
						"															<td></td>\r\n" + 
						"															<td>"+vv.getMemberId()+"</td>\r\n" + 													
						"															<td><a href='manager_memberView.do?memberId="+vv.getMemberId()+"'>"+vv.getMemberName()+"</a></td>\r\n" +
						"															<td>"+vv.getMemberGender()+"</td>\r\n" + 
						"															<td>"+vv.getMemberTel()+"</td>\r\n" + 
						"															<td>"+vv.getMemberAddr()+"</td>\r\n" + 
						"															<td>"+vv.getMemberAddr2()+"</td>\r\n" + 
						"															<td>"+vv.getMemberAddr3()+"</td>\r\n" + 
						"															<td>"+vv.getMemberOrder()+"</td>\r\n" + 
						"															<td>"+vv.getMemberGrade()+"</td>\r\n" + 
						"														</tr>";
			}
		}
		return result;
	}

	/*
	 *회원관리 정렬 기능 
	 * */
	@RequestMapping(value = "memberSelectOption.do",produces = "application/text; charset=UTF-8")
	@ResponseBody
	public String selectOption(MemberVO vo) {
		List<MemberVO> list = service.selectOption(vo);
		String result = "";
		for(MemberVO vv : list) {
			result += "<tr>\r\n" + 
					"															<td></td>\r\n" + 
					"															<td>"+vv.getMemberId()+"</td>\r\n" + 													
					"															<td><a href='manager_memberView.do?memberId="+vv.getMemberId()+"'>"+vv.getMemberName()+"</a></td>\r\n" +
					"															<td>"+vv.getMemberGender()+"</td>\r\n" + 
					"															<td>"+vv.getMemberTel()+"</td>\r\n" + 
					"															<td>"+vv.getMemberAddr()+"</td>\r\n" + 
					"															<td>"+vv.getMemberAddr2()+"</td>\r\n" + 
					"															<td>"+vv.getMemberAddr3()+"</td>\r\n" + 
					"															<td>"+vv.getMemberOrder()+"</td>\r\n" + 
					"															<td>"+vv.getMemberGrade()+"</td>\r\n" + 

					"														</tr>";
		}
		return result;
	}
	
	@RequestMapping("manager_memberDelete.do")
	public String managerMemberDelete(Model m,MemberVO vo ) {
		service.deleteMember(vo);
		return "redirect:manager_member.do";
	}		

	/*
	 * 회원주문서보기페이지
	 * */
	@RequestMapping("manager_memberOrders.do")
	public void managerMemberOrders(Model m,MemberVO vo ) {
		m.addAttribute("getOrdersByMemberId", service.getOrdersByMemberId(vo));	
	}	
	
	/*
	 * ordersSearch.do
	 * 주문서검색 ajax
	 * */
	@RequestMapping(value = "ordersSearch.do",produces = "application/text; charset=UTF-8")
	@ResponseBody
	public String ordersSearch(OrdersVO vo) {
		OrdersVO ordervo = service.ordersSearch(vo); 
		String result = "";

			result += "<tr>\r\n" + 
					"													<td>주문서번호</td>\r\n" + 
					"													<td><a href='manager_memberOrderGoods.do?memberId="+ordervo.getMemberId()+"&orderNo="+ordervo.getOrderNo()+"'>"+ordervo.getOrderNo()+"</a></td>\r\n" + 
					"												</tr>\r\n" + 
					"												<tr>\r\n" + 
					"													<td>배송받는사람</td>\r\n" + 
					"													<td>"+ordervo.getAddrName()+"</td>\r\n" + 
					"												</tr>\r\n" + 
					"												<tr>\r\n" + 
					"													<td>우편번호</td>\r\n" + 
					"													<td>"+ordervo.getOrderAddr()+"</td>\r\n" + 
					"												</tr>\r\n" + 
					"												<tr>\r\n" + 
					"													<td>주소</td>\r\n" + 
					"													<td>"+ordervo.getOrderAddr2()+"</td>\r\n" + 
					"												</tr>													\r\n" + 
					"												<tr>\r\n" + 
					"													<td>상세주소</td>\r\n" + 
					"													<td>"+ordervo.getOrderAddr3()+"</td>\r\n" + 
					"												</tr>\r\n" + 
					"												<tr>\r\n" + 
					"													<td>받으실분전화번호</td>\r\n" + 
					"													<td>"+ordervo.getOrderTel()+"</td>\r\n" + 
					"												</tr>\r\n" + 
					"												<tr>\r\n" + 
					"													<td>주문날짜</td>\r\n" + 
					"													<td>"+ordervo.getOrderDate()+"</td>\r\n" + 
					"												</tr>";
		
		return result;
	}
	
	/*
	 * 주문상품페이지
	 * manager_memberOrderGoods.do
	 * */
	@RequestMapping("manager_memberOrderGoods.do")
	public void managerMemberOrderGoods(Model m,OrderGoodsVO vo ) {
		m.addAttribute("selectOrderGoodsByOrderNo", service.selectOrderGoodsByOrderNo(vo));	
	}	
	
	/***************************************************end of 회원관리******************************************************/	
	
	/***************************************************상품관리******************************************************/
	
	/*
	 * parameter page=1 해당화면
	 * */
	
	@RequestMapping("manager_goods.do")
	public void managerGoods(Model m,String page) {


		m.addAttribute("getGoodsCount", service.getGoodsCount());
		if(page==null) {
			page="1";
		}
		int p = Integer.parseInt(page);
		HashMap h = new HashMap();
		h.put("FIRST", 10*p-9);
		h.put("LAST", 10*p);
		m.addAttribute("getGoodsList", service.getPageGoodsList(h)); 
	}

	/*
	 * 상품정보얻기
	 * */
	
	@RequestMapping("manager_goodsView.do")
	public void managerGoodsView(Model m,GoodsVO vo,AddInfoVO avo) {
		m.addAttribute("getGoodsInfo", service.getGoodsInfo(vo));
		String size = "";
		AddInfoVO info = new AddInfoVO();
		List<AddInfoVO> sizeList = service.getGoodsInShopSize(avo); 
		for(AddInfoVO vvv:sizeList) {
			size += vvv.getGoodsSize()+"/";
			info.setGoodsSize(size);
		}
		m.addAttribute("getGoodsInShopSize", info);
	}

	/*
	 * 상품정보삭제
	 * */
	@RequestMapping("manager_goodsDelete.do")
	public String managerGoodsDelete(GoodsVO vo) {
		service.deleteGoods(vo);
		return "redirect:manager_goods.do";
	}

	/*
	 * 상품정보페이지 상품정조수정하기전 상품정보 얻기
	 * */
	@RequestMapping("manager_goodsUpdate.do")
	public void managerGoodsUpdate(Model m,GoodsVO vo) {
		m.addAttribute("getGoodsInfo", service.getGoodsInfo(vo));
	}

	/**
	 * 상품정보페이지 상품정보수정 및 DB에 저장
	 * */
	@RequestMapping("manager_goods_update_result.do")
	public String managerGoodsUpdateResult(GoodsVO vo) {
		service.managerGoodsUpdate(vo);
		return "redirect:manager_goods.do";
	}

	/*
	 *상품관리 정렬 기능 
	 * */
	@RequestMapping(value = "goodsSelectOption.do",produces = "application/text; charset=UTF-8")
	@ResponseBody
	public String goodsSelectOption(GoodsVO vo) {
		List<GoodsVO> list = service.goodsSelectOption(vo);
		String result = "";
		for(GoodsVO vv : list) {
			result += "<tr>\r\n" + 
					"															<td></td>\r\n" + 
					"															<td>"+vv.getGoodsNo()+"</td>\r\n" + 													
					"															<td><a href='manager_goodsView.do?goodsNo="+vv.getGoodsNo()+"'>"+vv.getGoodsName()+"</a></td>\r\n" +
					"															<td>"+vv.getGoodsCnt()+"</td>\r\n" + 
					"															<td>"+vv.getGoodsPrice()+"</td>\r\n" + 
					"															<td>"+vv.getGoodsTimes()+"</td>\r\n" + 
					"															<td>"+vv.getGoodsDetails()+"</td>\r\n" + 
					"															<td>"+vv.getGoodsFname()+"</td>\r\n" + 
					"															<td>"+vv.getGoodsSize()+"</td>\r\n" + 
					"															<td>"+vv.getGoodsDate()+"</td>\r\n" + 

					"														</tr>";
		}
		return result;
	}

	/*
	 * 상품정보추가
	 * */
	@RequestMapping("manager_goods_insert_result.do")
	public String managerGoodsInsertResult(GoodsVO vo) {
		service.InsertGoods(vo);
		return "redirect:manager_goods.do";

	}

	/*
	 * 상품정보검색 기능 ajax
	 * */
	@RequestMapping(value="goodsSearch.do",produces = "application/text; charset=UTF-8")
	@ResponseBody
	public String goodsSearch(GoodsVO vo,String page) {
		String result = "";
		if(vo.getGoodsSearch() == "") {
			if(page==null) {
				page="1";
			}
			int p = Integer.parseInt(page);
			HashMap h = new HashMap();
			h.put("FIRST", 10*p-9);
			h.put("LAST",  10*p);
			for(GoodsVO vvv : service.getPageGoodsList(h)) {
				result += "<tr>\r\n" + 
						"															<td>"+vvv.getNo()+"</td>\r\n" + 
						"															<td>"+vvv.getGoodsNo()+"</td>\r\n" + 													
						"															<td><a href='manager_goodsView.do?goodsNo="+vvv.getGoodsNo()+"'>"+vvv.getGoodsName()+"</a></td>\r\n" +
						"															<td>"+vvv.getGoodsCnt()+"</td>\r\n" + 
						"															<td>"+vvv.getGoodsPrice()+"</td>\r\n" + 
						"															<td>"+vvv.getGoodsTimes()+"</td>\r\n" + 
						"															<td>"+vvv.getGoodsDetails()+"</td>\r\n" + 
						"															<td>"+vvv.getGoodsFname()+"</td>\r\n" + 
						"															<td>"+vvv.getGoodsSize()+"</td>\r\n" + 
						"															<td>"+vvv.getGoodsDate()+"</td>\r\n" + 
						"														</tr>";
			}
		}else {
			for(GoodsVO vv : service.goodsSearch(vo)) {
				result += "<tr>\r\n" + 
						"															<td></td>\r\n" + 
						"															<td>"+vv.getGoodsNo()+"</td>\r\n" + 													
						"															<td><a href='manager_goodsView.do?goodsNo="+vv.getGoodsNo()+"'>"+vv.getGoodsName()+"</a></td>\r\n" +
						"															<td>"+vv.getGoodsCnt()+"</td>\r\n" + 
						"															<td>"+vv.getGoodsPrice()+"</td>\r\n" + 
						"															<td>"+vv.getGoodsTimes()+"</td>\r\n" + 
						"															<td>"+vv.getGoodsDetails()+"</td>\r\n" + 
						"															<td>"+vv.getGoodsFname()+"</td>\r\n" + 
						"															<td>"+vv.getGoodsSize()+"</td>\r\n" + 
						"															<td>"+vv.getGoodsDate()+"</td>\r\n" + 
						"														</tr>";
			}
		}
		return result;
	}
	
	/***************************************************end of 상품관리******************************************************/

	/***************************************************지역관리******************************************************/
	
	/*
	 * page=1 해당화면
	 * */
	@RequestMapping("manager_location.do")
	public void managerLocation(Model m,String page) {
		m.addAttribute("getLocationCount", service.getLocationCount());
		if(page==null) {
			page="1";
		}
		int p = Integer.parseInt(page);
		HashMap h = new HashMap();
		int first = 10*p-9;
		int last = 10*p;
		h.put("FIRST", first);
		h.put("LAST", last);
		m.addAttribute("getPageLocationList", service.getPageLocationList(h)); 
	}

	/*
	 * location테이블 ajax 정력
	 * */
	@RequestMapping(value = "locationSelectOption.do",produces = "application/text; charset=UTF-8")
	@ResponseBody
	public String locationSelectOption(LocationVO vo) {
		List<LocationVO> list = service.locationSelectOption(vo);
		String result = "";
		for(LocationVO vv : list) {
			result += "<tr>\r\n" + 
					"															<td></td>\r\n" + 
					"															<td>"+vv.getLocSn()+"</td>\r\n" + 													
					"															<td><a href='manager_locationView.do?locSn="+vv.getLocSn()+"'>"+vv.getLocName()+"</a></td>\r\n" +


					"														</tr>";
		}
		return result;
	}
	
	/*
	 * 지역추가 ajax locName 중복확인 checkLocName.do
	 * */
	@RequestMapping(value="checkLocName.do",produces = "application/text; charset=UTF-8")
	@ResponseBody
	public String checkLocName(LocationVO vo) {
		String result ="";
		if(service.checkLocName(vo) != null) {
			result = "이미존재된 지역입니다.";
			return result;
		}
		return result;
	}
	
	/*
	 * 지역추가기능 manager_location_insert_result.do
	 * */
	@RequestMapping("manager_location_insert_result.do")
	public String managerLocationInsertResult(LocationVO vo) {
		service.managerInsertLocation(vo);;
		return "redirect:manager_location.do";
	}

	/*
	 * location테이블 ajax Search 기능
	 * */
	@RequestMapping(value = "locationSearch.do",produces = "application/text; charset=UTF-8")
	@ResponseBody
	public String locationSearch(LocationVO vo,String page) {
		
		String result = "";
		if(vo.getLocSearch() == "") {
			if(page==null) {
				page="1";
			}
			int p = Integer.parseInt(page);
			HashMap h = new HashMap();
			int first = 10*p-9;
			int last = 10*p;
			h.put("FIRST", first);
			h.put("LAST", last);
			for(LocationVO vv : service.getPageLocationList(h)) {
				result += "<tr>\r\n" + 
						"															<td>"+vv.getNo()+"</td>\r\n" + 
						"															<td>"+vv.getLocSn()+"</td>\r\n" + 													
						"															<td><a href='manager_locationView.do?locSn="+vv.getLocSn()+"'>"+vv.getLocName()+"</a></td>\r\n" +


						"														</tr>";
			}
			
		}else {
			for(LocationVO vv : service.locationSearch(vo)) {
				result += "<tr>\r\n" + 
						"															<td></td>\r\n" + 
						"															<td>"+vv.getLocSn()+"</td>\r\n" + 													
						"															<td><a href='manager_locationView.do?locSn="+vv.getLocSn()+"'>"+vv.getLocName()+"</a></td>\r\n" +


						"														</tr>";
			}
		}
		
		return result;
	}
	
	/*
	 * 지역테이블 지역명출력
	 * */
	@RequestMapping("manager_location_delete.do")
	public void managerLocationDelete(Model m) {
		m.addAttribute("getLocNameList", service.getLocNameList());	
	}
	
	/*
	 * 지역 삭제 
	 * */
	@RequestMapping("manager_locationDelete.do")
	public String managerlocationDelete(LocationVO vo) {
		service.deleteLocation(vo);
		return "redirect:manager_location.do";
	}

	/***************************************************end of 지역관리******************************************************/
	
	/***************************************************용기사이즈관리******************************************************/
	
	/*
	 * page=1 해당화면
	 * */
	@RequestMapping("manager_goodsSize.do")
	public void managerGoodsSize(Model m,String page) {
		m.addAttribute("getSizeCount", service.getSizeCount());
		if(page==null) {
			page="1";
		}
		int p = Integer.parseInt(page);
		HashMap h = new HashMap();
		int first = 10*p-9;
		int last = 10*p;
		h.put("FIRST", first);
		h.put("LAST", last);
		m.addAttribute("getPageSizeList", service.getPageSizeList(h)); 
	}

	/*
	 * size테이블 ajax 정력
	 * */
	@RequestMapping(value = "sizeSelectOption.do",produces = "application/text; charset=UTF-8")
	@ResponseBody
	public String sizeSelectOption(SizeVO vo) {
		List<SizeVO> list = service.sizeSelectOption(vo);
		String result = "";
		for(SizeVO vv : list) {
			result += "<tr>\r\n" + 
					"															<td></td>\r\n" + 

					"															<td><a href='manager_sizeView.do?goodsSizeNo="+vv.getGoodsSizeNo()+"'>"+vv.getGoodsSize()+"</a></td>\r\n" +
					"															<td>"+vv.getGoodsSizeNo()+"</td>\r\n" + 	

					"														</tr>";
		}
		return result;
	}

	/*
	 * size테이블 ajax Search 기능
	 * */
	@RequestMapping(value = "sizeSearch.do",produces = "application/text; charset=UTF-8")
	@ResponseBody
	public String sizeSearch(SizeVO vo,String page) {
		
		String result = "";
		if(vo.getSizeSearch() == "") {
			if(page==null) {
				page="1";
			}
			int p = Integer.parseInt(page);
			HashMap h = new HashMap();
			h.put("FIRST", 10*p-9);
			h.put("LAST", 10*p);
			for(SizeVO vv : service.getPageSizeList(h)) {
				result += "<tr>\r\n" + 
						"															<td>"+vv.getNo()+"</td>\r\n" + 											
						"															<td><a href='manager_sizeView.do?goodsSizeNo="+vv.getGoodsSizeNo()+"'>"+vv.getGoodsSize()+"</a></td>\r\n" +
						"															<td>"+vv.getGoodsSizeNo()+"</td>\r\n" + 		
						"														</tr>";
			}
		}else {
				for(SizeVO vv : service.sizeSearch(vo)) {
					result += "<tr>\r\n" + 
							"															<td></td>\r\n" + 											
							"															<td><a href='manager_sizeView.do?goodsSizeNo="+vv.getGoodsSizeNo()+"'>"+vv.getGoodsSize()+"</a></td>\r\n" +
							"															<td>"+vv.getGoodsSizeNo()+"</td>\r\n" + 		
							"														</tr>";
				}
			}
		return result;
	}
	
	/*
	 * 용기사이즈있는지 check ajax  
	 * checkGoodsSize.do
	 * */
	@RequestMapping(value="checkGoodsSize.do",produces = "application/text; charset=UTF-8")
	@ResponseBody
	public String checkGoodsSize(SizeVO vo) {
		String result ="";
		if(service.checkGoodsSize(vo) != null) {
			result = "이미존재된 사이즈입니다.";
			return result;
		}
		return result;
	}
	
	/*
	 * 용기사이즈추가 기능
	 * manager_goodsSize_insert_result.do
	 * */
	@RequestMapping("manager_goodsSize_insert_result.do")
	public String managerGoodsSizeInsertResult(SizeVO vo) {
		service.insertSize(vo); 
		return "redirect:manager_goodsSize.do";
	}
	
	
	/***************************************************end of 용기사이즈관리******************************************************/

	/***************************************************매장관리******************************************************/
	
	/*
	 * 매장관리 페이징부분 및 각페이지에 레코드수
	 * */
	@RequestMapping("manager_shop.do")
	public void managerShop(Model m,String page) {


		m.addAttribute("getShopListCount", service.getShopListCount());
		if(page==null) {
			page="1";
		}
		int p = Integer.parseInt(page);
		HashMap h = new HashMap();
		int first = 10*p-9;
		int last = 10*p;
		h.put("FIRST", first);
		h.put("LAST", last);
		m.addAttribute("getPageShopList", service.getPageShopList(h)); 
	}


	/*
	 * 매장테이블 ajax 정력
	 * */
	@RequestMapping(value = "shopListSelectOption.do",produces = "application/text; charset=UTF-8")
	@ResponseBody
	public String shopListSelectOption(ShopListVO vo) {
		List<ShopListVO> list = service.shopListSelectOption(vo);
		String result = "";
		for(ShopListVO vv : list) {
			result += "<tr>\r\n" + 
					"															<td></td>\r\n" + 
					"															<td>"+vv.getShopNo()+"</td>\r\n" + 													
					"															<td><a href='manager_addInfo.do?shopNo="+vv.getShopNo()+"'>"+vv.getShopName()+"</a></td>\r\n" +
					"															<td>"+vv.getShopAddr()+"</td>\r\n" + 
					"															<td>"+vv.getShopTel()+"</td>\r\n" + 
					"															<td>"+vv.getLocSn()+"</td>\r\n" + 
					"															<td>"+vv.getShopDate()+"</td>\r\n" + 


					"														</tr>";
		}
		return result;
	}	
	
	/*
	 * shoplist테이블검색 기능
	 * */
	@RequestMapping(value="shopListSearch.do",produces = "application/text; charset=UTF-8")
	@ResponseBody
	public String shopListSearch(ShopListVO vo,String page) {
		
		String result = "";
		if(vo.getShopListSearch() == "") {
			if(page==null) {
				page="1";
			}
			int p = Integer.parseInt(page);
			HashMap h = new HashMap();
			h.put("FIRST", 10*p-9);
			h.put("LAST", 10*p);
			for(ShopListVO vv : service.getPageShopList(h)) {
				result += "<tr>\r\n" + 
						"															<td>"+vv.getNo()+"</td>\r\n" + 
						"															<td>"+vv.getShopNo()+"</td>\r\n" + 													
						"															<td><a href='manager_addInfo.do?shopNo="+vv.getShopNo()+"'>"+vv.getShopName()+"</a></td>\r\n" +
						"															<td>"+vv.getShopAddr()+"</td>\r\n" + 
						"															<td>"+vv.getShopTel()+"</td>\r\n" + 
						"															<td>"+vv.getLocSn()+"</td>\r\n" + 
						"															<td>"+vv.getShopDate()+"</td>\r\n" + 
						"														</tr>";
			}
		}else {
			for(ShopListVO vv : service.shopListSearch(vo)) {
				result += "<tr>\r\n" + 
						"															<td></td>\r\n" + 
						"															<td>"+vv.getShopNo()+"</td>\r\n" + 													
						"															<td><a href='manager_addInfo.do?shopNo="+vv.getShopNo()+"'>"+vv.getShopName()+"</a></td>\r\n" +
						"															<td>"+vv.getShopAddr()+"</td>\r\n" + 
						"															<td>"+vv.getShopTel()+"</td>\r\n" + 
						"															<td>"+vv.getLocSn()+"</td>\r\n" + 
						"															<td>"+vv.getShopDate()+"</td>\r\n" + 
						"														</tr>";
			}
		}
		return result;
	}
	
	/*
	 * 매장정보 얻어오기
	 * */
	@RequestMapping("manager_addInfo.do")
	public void managerAddInfo(Model m,AddInfoVO vo,String page) {
		m.addAttribute("getShopInfoByShopNo", service.getShopInfoByShopNo(vo));
		/*사이즈값들 goodsSize 지정
		 * nlist -- addInfoVO
		 * goodsSize = 31mm/32mm/33mm/34mm/..
		 * */
		List<AddInfoVO> list = service.getGoodsInShopInfo(vo);
		ArrayList<AddInfoVO> nlist = new ArrayList<AddInfoVO>();
		for(AddInfoVO vv : list) {
			vv.setShopNo(vo.getShopNo());
			String size = "";
			List<AddInfoVO> sizeList = service.getGoodsInShopSize(vv); 
			for(AddInfoVO vvv:sizeList) {
				size += vvv.getGoodsSize()+"/";
				vv.setGoodsSize(size);
			}
			nlist.add(vv);
		}
		
		m.addAttribute("getKindsOfGoodsCnt", service.getKindsOfGoodsCnt(vo));
		
		/*페이징 처리*/
		if(page==null) {
			page="1";
		}
		int p = Integer.parseInt(page);
		HashMap h = new HashMap();
		h.put("FIRST", 10*p-9);
		h.put("LAST", 10*p);
		
		/*..번쨰 ..번째 레코드 얻어오기
		 * 	1	10
		 * 11	20
		 * ..
		 * */
		List<AddInfoVO> infoList = service.getPageGoodsNoList(h);
		/*
		 * goodsNo 같으면 사이즈값 있는 info 전송객체에저장 
		 * */
		ArrayList<AddInfoVO> rlist = new ArrayList<AddInfoVO>();
		for(AddInfoVO infoVO : infoList) {
			for(AddInfoVO info : nlist) {
				if(info.getGoodsNo()==infoVO.getGoodsNo()) {
					rlist.add(info);
				}	
			}
		}
		m.addAttribute("getGoodsInShopInfo",rlist );
	}
	
	/*
	 * 매장 상품 사이즈 수정 페이지
	 * */
	@RequestMapping("manager_addInfo_update.do")
	public void managerAddInfo(AddInfoVO vo,Model m) {
		m.addAttribute("getShopInfoByShopNo", service.getShopInfoByShopNo(vo));
	}
	
	/*
	 * 매장삭제기능
	 * */
	@RequestMapping("manager_shopDelete.do")
	public String managerShopDelete(ShopListVO vo) {
		service.managerShopDelete(vo);
		return "redirect:manager_shop.do";
	}	
	
	/*
	 * 매장추가
	 * */
	@RequestMapping("manager_shop_insert_result.do")
	public String managerShopInsertResult(ShopListVO vo) {
		service.managerInsertShop(vo);
		return "redirect:manager_shop.do";
	}
	
	/*
	 * 매장추가 ajax locSn 중복확인 checkLocSn.do
	 * */
	@RequestMapping(value="checkLocSn.do",produces = "application/text; charset=UTF-8")
	@ResponseBody
	public String checkLocSn(ShopListVO vo) {
		String result ="";
		if(service.checkLocSn(vo) == null) {
			result = "존재하지않은 지역번호입니다.";
		}
		return result;
	}
	
	/*
	 * 상품번호 check  ajax checkGoodsNo.do
	 * */
	@RequestMapping(value="checkGoodsNo.do",produces = "application/text; charset=UTF-8")
	@ResponseBody
	public String checkGoodsNo(AddInfoVO vo) {
		String result ="";
		if(service.checkGoodsNoInGoods(vo) == null) { 
			result = "존재하지않은 상품번호입니다.";
			return result;
		}else if(service.checkGoodsNoInadd(vo).size() != 0 ) {
			result = "이미등록된 상품번호입니다.";
			
		}
		return result;
	}
	
	/*
	 * 사이즈 ajax check checkSizeNo.do
	 * */
	@RequestMapping(value="checkSizeNo.do",produces = "application/text; charset=UTF-8")
	@ResponseBody
	public String checkSizeNo(AddInfoVO vo) {
		String result ="";
		if(service.checkSizeInGoodsSize(vo) == null) { 
			result = "존재하지않은 사이즈입니다.";
			return result;
		}
		
		return result;
	}
	
	/*
	 * 매장용기추가 manager_shopGoodsInsert.do
	 * */
	@RequestMapping("manager_shopGoodsInsert.do")
	public String managerShopGoodsInsert(AddInfoVO vo) {
		ShopListVO shopvo = service.getShopInfoByNo(vo);
		vo.setShopName(shopvo.getShopName());
		vo.setShopTel(shopvo.getShopTel());
		vo.setShopAddr(shopvo.getShopAddr());
		service.shopGoodsInsert(vo);
		return "redirect:manager_addInfo.do?shopNo="+vo.getShopNo();
	}
	
	/*
	 * manager_goodsInShopAddSize.do 매장용기사이즈 추가
	 * */
	@RequestMapping("manager_goodsInShopAddSize.do")
	public void managerGoodsInShopAddSize(Model m,AddInfoVO vo ) {
		m.addAttribute("goodsSizeList", service.getSizeList());
	}
	
	/*
	 * 매장상품사이즈 추가
	 * */
	@RequestMapping("manager_shopGoodsSizeInsert.do")
	public String managerShopGoodsSizeInsert(AddInfoVO vo) {
		ShopListVO shopvo = service.getShopInfoByNo(vo);
		vo.setShopName(shopvo.getShopName());
		vo.setShopTel(shopvo.getShopTel());
		vo.setShopAddr(shopvo.getShopAddr());
		service.shopGoodsInsert(vo);
		return "redirect:manager_goodsView.do?shopNo="+vo.getShopNo()+"&goodsNo="+vo.getGoodsNo();
	}
	
	/*
	 * 매장 상품 사이즈 ajax check sizeCheckInAdd.do
	 * */
	@RequestMapping(value="sizeCheckInAdd.do",produces = "application/text; charset=UTF-8")
	@ResponseBody
	public String sizeCheckInAdd(AddInfoVO vo) {
		String result ="";
		if(service.checkSizeInAdd(vo) != null) { 
			result = "이미있는 사이즈입니다.";
			return result;
		}
		
		return result;
	}
	
	/*
	 * 매장용기사이즈삭제페이지 
	 * */
	@RequestMapping("manager_goodsInShopDeleteSize.do")
	public void managerGoodsInShopDeleteSize(Model m,AddInfoVO vo ) {
		m.addAttribute("goodsSizeList", service.getSizeList());
	}
	
	/*
	 * 매장용기사이즈삭제 기능
	 * */
	@RequestMapping("manager_shopGoodsSizeDelete.do")
	public String managerShopGoodsSizeDelete(AddInfoVO vo) {
		service.shopGoodsSizeDelete(vo);
		return "redirect:manager_goodsView.do?shopNo="+vo.getShopNo()+"&goodsNo="+vo.getGoodsNo();
	}
	
	/*
	 * 매장 상품 사이즈 ajax check sizeCheckInAddDelete.do
	 * */
	@RequestMapping(value="sizeCheckInAddDelete.do",produces = "application/text; charset=UTF-8")
	@ResponseBody
	public String sizeCheckInAddDelete(AddInfoVO vo) {
		String result ="";
		if(service.checkSizeInAdd(vo) == null) { 
			result = "등록되지않은 사이즈입니다.";
			return result;
		}
		return result;
	}
	
	/* 
	 * 매장용기삭제 manager_goodsInShopDelete.do
	 * */
	@RequestMapping("manager_goodsInShopDelete.do")
	public String managerGoodsInShopDelete(AddInfoVO vo) {
		service.managerGoodsInShopDelete(vo);
		return "redirect:manager_addInfo.do?shopNo="+vo.getShopNo();
	}
	
	/*
	 * 용기사이즈 삭제페이지
	 * manager_goodsSize_delete.do
	 * */
	@RequestMapping("manager_goodsSize_delete.do")
	public void managerGoodsSizeDelete(SizeVO vo,Model m) {
		m.addAttribute("goodsSizeList", service.getGoodsSizeList());
	}
	
	/*
	 * 용기사이즈 학제
	 * manager_goodsSizeDelete.do
	 * */
	@RequestMapping("manager_goodsSizeDelete.do")
	public String managerGoodsSizedelete(SizeVO vo) {
		service.deleteGoodsSize(vo); 
		return "redirect:manager_goodsSize.do";
	}
	
	/***************************************************end of 지역관리******************************************************/

	@RequestMapping("manager_shopInfo.do")
	public void managerShopInfo(Model m) {

		m.addAttribute("getShopInfoList", service.getShopInfoList());
	}	

	@RequestMapping("manager_memberView.do")
	public void managerMemberView(Model m,MemberVO vo ) {
		m.addAttribute("getMemberInfo", service.getMemberInfo(vo));  

	}	

	
}
