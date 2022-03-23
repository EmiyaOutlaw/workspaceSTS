package com.kh.shop.service;

import java.util.List;

import com.kh.shop.vo.ImgVO;
import com.kh.shop.vo.ItemVO;
import com.kh.shop.vo.MenuVO;
import com.kh.shop.vo.SubMenuVO;

public interface adminService {
	
	
	//상품 등록
	void insertItem(ItemVO itemVO);
	
	//관리자 메뉴 목록 조회
	
	List<MenuVO> selectMenuLIst();
	
	
	//하위 메뉴 목록 조회
	List<SubMenuVO> selectSubMenuList(String menuCode);
	
	//상품 이미지 정보 등록 
	void insertImages(ImgVO imgVO);
}
