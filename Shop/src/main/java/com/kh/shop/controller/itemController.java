package com.kh.shop.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.shop.service.itemService;
import com.kh.shop.vo.CategoryVO;
import com.kh.shop.vo.ItemVO;

@Controller
@RequestMapping("/item")
public class itemController {
	
	@Resource(name = "itemService")
	private itemService itemservice;
	
	
	@GetMapping("/itemList")
	public String itemList(Model model, String cateCode) {
		//category 목록
		model.addAttribute("categoryList", itemservice.selectCategoryList());
		
		
		//메뉴에서 클릭한 카테고리의 코드값
		model.addAttribute("selectedCategory", cateCode);
		return "item/item_list";
		
	}
	
	
}
