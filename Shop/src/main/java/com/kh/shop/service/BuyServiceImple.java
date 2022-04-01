package com.kh.shop.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.shop.vo.MemberVO;

@Service("buyService")
public class BuyServiceImple implements BuyService{

	
	@Autowired
	private SqlSessionTemplate sqlsession;

	
	@Override
	public int selectNextBuyNum() {
	
		return sqlsession.selectOne("buyMapper.selectNextBuyNum");
	}

	
}
