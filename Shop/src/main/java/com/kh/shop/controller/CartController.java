package com.kh.shop.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.shop.service.CartService;
import com.kh.shop.vo.CartVO;
import com.kh.shop.vo.MemberVO;

@Controller
@RequestMapping("/cart")
public class CartController {

	@Resource(name = "cartService")
	private CartService cartService;

	// 장바구니에 상품등록

	// command객체는 자동으로 jsp로 데이터를 가져간다.
	// 넘어갈 때는 클래스명의 앞글자를 소문자로 하고 넘어간다.

	// 장바구니 삽입
	@PostMapping("/insertCart")
	public String shoppingCart(CartVO cartVO, HttpSession session, MemberVO memberVO) {

		// 자료형 변환. loginInfo의 자료형은 MemberVO 이다
		String loginId = ((MemberVO) (session.getAttribute("loginInfo"))).getMemId();
		cartVO.setMemId(loginId);
		cartService.insertCart(cartVO);

		return "/cart/insert_result";
	}

	// 장바구니 목록 페이지
	@GetMapping("/cartList")
	public String cartList(Model model, HttpSession session) {

		// httpSession을 이용하여 memId를 가져온다.

		String memId = ((MemberVO) session.getAttribute("loginInfo")).getMemId();
		model.addAttribute("cartList", cartService.selectCartList(memId));
		return "cart/cart_list";

	}

}
