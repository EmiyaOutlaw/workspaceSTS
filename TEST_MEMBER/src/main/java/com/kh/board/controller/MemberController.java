package com.kh.board.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.board.service.MemberService;
import com.kh.board.vo.MemberVO;

@Controller
@RequestMapping("/member")
public class MemberController {
	@Resource(name = "memberService")
	private MemberService memberService;
	
		@PostMapping("/join")
		public String join(MemberVO memberVO) {
			System.out.println(memberVO);
			memberService.join(memberVO);
			return "redirect:/board/boardList";
		}
	
	@PostMapping("/login")
	public String login(MemberVO memberVO, HttpSession session) {
		MemberVO result = memberService.login(memberVO);
		
		if(result != null) {
			session.setAttribute("loginInfo", result);
			
		}
		
		return "redirect:/board/boardList";
	}
	
	//@GetMapping("/logout")
	//public String logout() {
	//	
	//	return "";
	//}

}
