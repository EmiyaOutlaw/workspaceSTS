package com.kh.shop.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.shop.vo.BuyVO;
import com.kh.shop.vo.CartVO;
import com.kh.shop.vo.MemberVO;

@Service("buyService")
public class BuyServiceImple implements BuyService{

	
	@Autowired
	private SqlSessionTemplate sqlsession;

	
	@Override
	public int selectNextBuyNum() {
	
		return sqlsession.selectOne("buyMapper.selectNextBuyNum");
	}


	@Override
	@Transactional(rollbackFor = Exception.class) //transaction 처리해주는 것이다. 
												  //메소드에 있는 모든 것이 끝나기 전까지는 commit을 시키지 않는다.
													//exception 클래스는 모든 오류를 처리할 수 있는 초대 클래스이다. 
												//Controller가 아닌 ServiceImpl에서 한다. 
	public void insertBuys(BuyVO buyVO, CartVO cartVO) {

		sqlsession.insert("buyMapper.insertBuys", buyVO);
		sqlsession.delete("cartMapper.deleteCarts", cartVO);

	}

	
}
