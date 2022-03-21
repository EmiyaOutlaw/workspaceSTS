package com.kh.shop.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.method.support.ModelAndViewContainer;

import com.kh.shop.service.adminService;
import com.kh.shop.service.itemService;
import com.kh.shop.vo.ItemVO;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Resource(name="adminService")
	private adminService adminService;
	@Resource(name="itemService")
	private itemService itemService;
	

	//카테고리 관리 페이지로 이동 (상단에 관리자 메뉴 클릭 시 실행)
	@GetMapping("/categoryManage")
	public String categoryManage(Model model) {
		
		
		//관리자 메뉴 목록 조회 
		model.addAttribute("menuList", adminService.selectMenuLIst());
				
		//상품 관리 메뉴의 하위 메뉴 목록 조회
		model.addAttribute("subMenuList", adminService.selectSubMenuList());
		
		return "admin/category_manage";
	}
	
		//상품 등록 페이지로 이동 
		@GetMapping("/regItem")
		public String regItem(Model model) {
	
		//카테고리 목록 조회
		model.addAttribute("categoryList", itemService.selectCategoryList());
	
		//관리자 메뉴 목록 조회 
		model.addAttribute("menuList", adminService.selectMenuLIst());
				
		//상품 관리 메뉴의 하위 메뉴 목록 조회
		model.addAttribute("subMenuList", adminService.selectSubMenuList());
		
		return "admin/reg_item";
	

	}
		
		//상품 관리 페이지로 이동(side)
		@GetMapping("/itemManage")
		public String itemManage(Model model) {
			
			
			
			//관리자 메뉴 목록 조회 
			model.addAttribute("menuList", adminService.selectMenuLIst());
					
			//상품 관리 메뉴의 하위 메뉴 목록 조회
			model.addAttribute("subMenuList", adminService.selectSubMenuList());
			
			
			return "admin/item_manage";
		}
		
	
	@PostMapping("/regItem")
	// 책 등록 하기
	public String regItem(ItemVO itemVO) {
		adminService.insertItem(itemVO);
		
	
		return "redirect:/admin/regItem";
	}
	
	
}
