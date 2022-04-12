package com.kh.board.service;

import java.util.List;

import com.kh.board.vo.MemberVO;

public interface MemberService {
	//회원가입
	void join(MemberVO memberVO);
	
	//로그인
	MemberVO login(MemberVO memberVO);

}
