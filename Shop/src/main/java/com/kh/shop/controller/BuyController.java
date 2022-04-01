package com.kh.shop.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.shop.service.BuyService;
import com.kh.shop.vo.BuyVO;
import com.kh.shop.vo.MemberVO;

import net.sf.json.JSONArray;

@Controller
@RequestMapping("/buy")
public class BuyController {
	@Resource(name = "buyService")
	private BuyService buyService;
	
	
	@ResponseBody
	@PostMapping("/insertBuys")
	public void insertBuys(String data, HttpSession session) {
		
		System.out.println(data);
		String memId = ((MemberVO)session.getAttribute("loginInfo")).getMemId();
		
		//SHOP_BUY 테이블에 저장된 가장 큰 BUY_NUM + 1 값을 조회 
		int nextBuyNum = buyService.selectNextBuyNum();
		
		List<Map<String, String>> list = JSONArray.fromObject(data); 
		
		for(Map<String, String> map : list) {
			System.out.println("itemCode : " + map.get("itemCode") + " / itemCnt =" + map.get("itemCnt"));
			
			BuyVO vo = new BuyVO();
			vo.setItemCode(map.get("itemCode"));
			vo.setItemCnt(Integer.parseInt(map.get("itemCnt")));
			vo.setMemId(memId);
			vo.setBuyNum(nextBuyNum++);
		}
		
		
	}
	
	public void getNowDateTimeToString() {
		
		
	}
	
}
