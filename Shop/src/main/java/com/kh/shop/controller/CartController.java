package com.kh.shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.shop.vo.CartVO;
import com.kh.shop.vo.ItemVO;


@Controller
@RequestMapping("/cart")
public class CartController {

	@PostMapping("/insertCart")
	public String shoppingCart(CartVO cartVO, Model model, ItemVO itemVO) {
		System.out.println(cartVO);
		model.addAttribute("cart", cartVO);
		model.addAttribute("item", itemVO);
		return "/cart/cart_list";
	}

}
