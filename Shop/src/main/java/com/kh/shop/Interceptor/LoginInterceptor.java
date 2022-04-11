package com.kh.shop.Interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
@Service("loginInterceptor")
public class LoginInterceptor extends HandlerInterceptorAdapter{

	@Override
	//해당 메소드가 실행되기 전
	//로그인 정보가 없다면 상품목록 페이지로 이동
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)throws Exception {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
		 Object loginInfo = session.getAttribute("loginInfo");
		 
		 if(loginInfo == null) {
			 response.sendRedirect("/item/itemList");
			 return false;  //원래 페이지로 안 간다. true는 간다. 
		 }
		 System.out.println(11111);
		 
		return true;
	}

}
