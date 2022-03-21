package com.kh.shop.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.shop.service.itemService;
import com.kh.shop.vo.ItemVO;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Resource(name="itemService")
	private itemService itemService;
	
	
	@GetMapping("/regItem")
	public String regItem(Model model) {
		//카테고리 목록 조회
		
		model.addAttribute("categoryList", itemService.selectCategoryList());
		return "admin/reg_item";
		
	}
	
	@PostMapping("/regItem")
	// 책 등록 하기
	public String regItem(ItemVO itemVO) {
		itemService.insertItem(itemVO);
		
		return "redirect:/admin/regItem";
	}
	
	
}
