package com.kh.board.service;

import java.util.List;

import com.kh.board.vo.MemberVO;

public interface BoardService {
	
	List<MemberVO> selectMemberList();

}
