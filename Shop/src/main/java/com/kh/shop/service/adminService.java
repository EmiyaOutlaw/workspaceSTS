package com.kh.shop.service;

import java.util.List;

import com.kh.shop.vo.ItemVO;
import com.kh.shop.vo.MenuVO;
import com.kh.shop.vo.SubMenuVO;

public interface adminService {
	
	
	//상품 등록
	void insertItem(ItemVO itemVO);
	
	//관리자 메뉴 목록 조회
	
	List<MenuVO> selectMenuLIst();
	
	
	//상품 관리 메뉴의 하위 메뉴 목록 조회
	List<SubMenuVO> selectSubMenuList();
}
