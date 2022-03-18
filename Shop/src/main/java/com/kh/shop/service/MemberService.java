package com.kh.shop.service;

import com.kh.shop.vo.MemberVO;

public interface MemberService {
	
	//회원가입
	void join(MemberVO memberVo);
	
	//로그인
	
	MemberVO login(MemberVO memberVo);
}
