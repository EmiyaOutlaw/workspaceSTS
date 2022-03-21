package com.kh.shop.service;

import java.util.List;

import com.kh.shop.vo.CategoryVO;
import com.kh.shop.vo.ItemVO;

public interface itemService {
	//카테고리 목록 조회
	
	List<CategoryVO> selectCategoryList();


}
