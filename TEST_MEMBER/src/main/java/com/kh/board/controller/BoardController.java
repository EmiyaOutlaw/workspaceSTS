package com.kh.board.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("/board")
public class BoardController {
	
	
	@GetMapping("/boardList")
	public String boardList() {
		return "content/board_list";
	}
	
	
	
	
	
}














