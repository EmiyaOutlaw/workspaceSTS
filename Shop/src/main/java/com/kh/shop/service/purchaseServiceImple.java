package com.kh.shop.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.shop.vo.MemberVO;

@Service("purcahseService")
public class purchaseServiceImple implements purchaseService{

	
	@Autowired
	private SqlSessionTemplate sqlsession;

	
}
