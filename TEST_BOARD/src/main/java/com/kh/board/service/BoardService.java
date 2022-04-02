package com.kh.board.service;

import java.util.List;

import com.kh.board.vo.BoardVO;

public interface BoardService {

	//게시글 목록 조회
	List<BoardVO> selectBoardList();
	
	//글 등록
	void boardupload(BoardVO boardVO);
}
