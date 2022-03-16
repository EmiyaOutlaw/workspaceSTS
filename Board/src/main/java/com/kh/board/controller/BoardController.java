package com.kh.board.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.board.service.BoardService;
import com.kh.board.service.BoardServiceImpl;
import com.kh.board.vo.BoardVO;

//@Controller annotation의 역할
//1.해당 클래스를 controller로 인식 
//2.해당 클래스에 대한 객체를 생성
//@RequestMapping("/board")
//요청 경로가 /board로 시작하면 BoardController  실행 


@Controller
@RequestMapping("/board")
public class BoardController {
	//boardServivce라는 이름으로 만들어진 객체를 가져오겠다.
	@Resource(name = "boardService")
	private BoardService boardService;
	
	
	//게시글 목록 페이지로 이동 
	@GetMapping("/boardList")
	public String boardList(Model model) {
		List<BoardVO> list = boardService.selectBoardList();
		model.addAttribute("boardList", list);
		
		return "board_list"; // /WEB-INF/views/ board_list.jsp
		
	//컨트롤러에서 컨트롤러로 이동 시 
		//return "redirect:/board/boardList";
		
	}
	@GetMapping("/boardWrite")
	public String goBoardWrite() {
		
		
		return "board_write";
	}
	@PostMapping("/boardWrite")
	//command 객체를 사용하면 쉽게 데이터를 받아 올 수 있다. setter가 있으면 자동으로 넘어온다.  
	public String boardWrite(BoardVO boardVO) {
		
		boardService.insertBoard(boardVO);
		
		return "redirect:/board/boardList";
	}
	
	@GetMapping("/boardDetail")
	public String boardDetail(int boardNum, Model model) {
		model.addAttribute("board", boardService.selectDetailBoardList(boardNum));
		return "board_detail";
	}
	
}
