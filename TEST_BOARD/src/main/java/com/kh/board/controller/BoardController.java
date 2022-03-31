package com.kh.board.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.board.service.BoardService;

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
	
}














