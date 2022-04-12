package com.kh.board.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.board.vo.MemberVO;

@Service("memberService")
public class MemberServiceImpl  implements MemberService{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//회원가입
	@Override
	public void join(MemberVO memberVO) {
		sqlSession.insert("boardMapper.join", memberVO);
	}

	
	//로그인
	@Override
	public MemberVO login(MemberVO memberVO) {

		return sqlSession.selectOne("boardMapper.login", memberVO);
	}

}
