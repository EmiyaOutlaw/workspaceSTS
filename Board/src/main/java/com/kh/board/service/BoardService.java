package com.kh.board.service;

import java.util.List;

import com.kh.board.vo.BoardVO;

public interface BoardService {
	List<BoardVO> selectBoardList();
	
	void insertBoard(BoardVO boardVO);
	
	BoardVO selectDetailBoardList(int boardNum);
}
