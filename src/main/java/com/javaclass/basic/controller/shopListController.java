package com.javaclass.basic.controller;

import java.util.HashMap;
import java.util.List;

/*import java.util.List;
import java.util.Map;*/

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
/*import org.springframework.ui.Model;*/
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
/*import org.springframework.web.bind.annotation.RequestParam;*/
import org.springframework.web.bind.annotation.ResponseBody;


/*import org.springframework.web.servlet.ModelAndView;
*/
/*import com.javaclass.basic.service.ManagerService;*/
import com.javaclass.basic.service.shopListServiceImpl;
/*import com.javaclass.basic.vo.AddInfoVO;

import com.javaclass.basic.vo.LocationVO;*/
import com.javaclass.basic.vo.ShopListVO;

/*import mappers.PageMaker;*/

@Controller
@RequestMapping("/shopList")
public class shopListController {
	
	@Autowired
	private shopListServiceImpl service;
	
	@RequestMapping("/{step}.do")
	public String view(@PathVariable String step) {
		return step;
	}
	
	/*
	 * @RequestMapping public ModelAndView openBoardList(CriteriaVO cri) throws
	 * Exception {
	 * 
	 * ModelAndView mav = new ModelAndView("/board/boardList");
	 * 
	 * PageMaker pageMaker = new PageMaker(); pageMaker.setCri(cri);
	 * pageMaker.setTotalCount(100);
	 * 
	 * List<Map<String,Object>> list = ManagerService.selectBoardList(cri);
	 * mav.addObject("list", list); mav.addObject("pageMaker", pageMaker);
	 * 
	 * return mav;
	 * 
	 * }
	 */
	
	@RequestMapping("shop.do")
	public void shopdo(Model m,String page) {
		if(page == null) {
			page = "1";
		}
		int pageN = Integer.parseInt(page);
		int first = pageN*10-9;
		int end = pageN*10;
		HashMap h = new HashMap();
		h.put("FIRST", first);
		h.put("END", end);
		m.addAttribute("shopListPage", service.shopListPage(h));
		m.addAttribute("shoplistCnt", service.getShopCnt());
		
		
		//m.addAttribute("getListByLocation", service.getListByLocation(vo));
		
	}
	
	@RequestMapping("new1.do")
	public void new1do(Model m1,ShopListVO vo) {
		m1.addAttribute("getAddInfo",service.getAddInfo(vo)); 
	}
	
	@RequestMapping(value= "selectedLocation.do", produces = "application/text; charset=UTF-8")
	@ResponseBody
	public String selectedLocation(ShopListVO vo) {
		List<ShopListVO> list = service.getSelectedLocation(vo);
		String result="";	
		for(ShopListVO vv : list) {
			result += "<tr class='a2'>\r\n" + 
					"								<td class='a'></td>\r\n" + 
					"								<td class='a'id='name1'	onclick='window.open(\"new1.do?shopNo="+vv.getShopNo()+"\",\"vv\",\"width=800, height=600, top=10, left=10\")'>"+vv.getShopName()+"</td>\r\n" + 
					"								<td class='a'>"+vv.getShopTel()+"</td>\r\n" + 
					"								<td class='a'>"+vv.getShopAddr()+"</td>\r\n" + 
					"							</tr>";
		}
		return result;
		
		
		//m.addAttribute("getListByLocation", service.getListByLocation(vo));
		
	}
	
	
	
	

}
