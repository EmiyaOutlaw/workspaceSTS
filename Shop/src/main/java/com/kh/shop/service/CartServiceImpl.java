package com.kh.shop.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.shop.vo.CartVO;

@Service("cartService")
public class CartServiceImpl implements CartService {
	
	@Autowired
	private SqlSessionTemplate sqlSession;


	
	@Override
	public void insertCart(CartVO cartVO) {
		sqlSession.insert("cartMapper.insertCart", cartVO);
	}

}
