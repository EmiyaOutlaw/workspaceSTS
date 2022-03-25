package com.kh.shop.service;

import com.kh.shop.vo.CartVO;

public interface CartService {
	//장바구니 상품 등록
	void insertCart(CartVO cartVO);
}
