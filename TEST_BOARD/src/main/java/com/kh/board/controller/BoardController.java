package com.kh.board.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.board.service.BoardService;
import com.kh.board.vo.BoardVO;

import oracle.jdbc.proxy.annotation.GetProxy;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	@Resource(name="boardService")
	private BoardService boardService;
	
	
	@GetMapping("/boardList")
	public String boardList(Model model) {
		
		model.addAttribute("boardList", boardService.selectBoardList());
		return "board_list";
	}

	@PostMapping("/boardWrite")
	public String boardWrite() {
		
		return "board_write";
	}
	
	@PostMapping("/boardupload")
	public String boardWrited(BoardVO boardVO) {
		boardService.boardupload(boardVO);
		return "redirect:boardList";
	}
}














