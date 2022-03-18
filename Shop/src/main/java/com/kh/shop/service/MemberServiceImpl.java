package com.kh.shop.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.shop.vo.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService{

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public void join(MemberVO memberVo) {
		sqlSession.insert("memberMapper.join", memberVo);
	}

	@Override
	public MemberVO login(MemberVO memberVo) {
		
		return sqlSession.selectOne("memberMapper.login", memberVo);
	}
	


	
}
