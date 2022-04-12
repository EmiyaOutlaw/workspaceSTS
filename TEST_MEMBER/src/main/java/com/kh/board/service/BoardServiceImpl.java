package com.kh.board.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.board.vo.MemberVO;

@Service("boardService")
public class BoardServiceImpl implements BoardService {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	//회원 목록 조회
	@Override
	public List<MemberVO> selectMemberList() {
		return sqlSession.selectList("boardMapper.selectMemberList");
	}



}
