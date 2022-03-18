package com.kh.shop.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.shop.service.MemberService;
import com.kh.shop.vo.MemberVO;


//@Controller annotation의 역할
//1.해당 클래스를 controller로 인식 
//2.해당 클래스에 대한 객체를 생성
//@RequestMapping("/board")
//요청 경로가 /board로 시작하면 BoardController  실행 


@Controller
@RequestMapping("/member")
public class MemberController {
	@Resource(name = "memberService")
	private MemberService memberService;
	
	@PostMapping("/join")
	public String join(MemberVO memberVo) {
		memberService.join(memberVo);
		return "redirect:/item/itemList";
	}
	
	@PostMapping("/login")
	public String login(MemberVO membeVo, HttpSession session) {
		MemberVO result = memberService.login(membeVo);
		
		if(result != null) {
			session.setAttribute("loginInfo", result);	
		}
		return "redirect:/item/itemList";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		
		session.removeAttribute("loginInfo");
		return "redirect:/item/itemList";
		
	}
	
}
