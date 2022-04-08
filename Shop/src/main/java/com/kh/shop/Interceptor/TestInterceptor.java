package com.kh.shop.Interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


//HandlerInterceptorAdapter 클래스를 상속 받으면
// /cart/cartList -> interceptor -> Controller
//interceptor 기능을 사용 할 수 있다.
//preHandle(): 컨트롤러의 동작 수행 전에 실행되는 메소드 
//postHandle(): 컨트롤러의 동작 이후에 실행되는 메소드 
//aftercompletion(): 화면 처리가 다 완료된 후, 실행되는 메소드 
@Service("testInterceptor")
public class TestInterceptor extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)throws Exception { 
		
		
		System.out.println("TestInterceptor -> preHandle() 실행");
		return true; //원래 요청 경로대로 진행...
	
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
		
		System.out.println("TestInterceptor -> postHandle() 실행");

	}
	
	//뒤에 ModelAndView 덕분에 Controlle로 데이터를 넘길 수 있다. 
}
