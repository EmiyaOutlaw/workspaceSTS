package com.kh.shop.vo;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

//collection framework:
//List, Map, Set, Queue

public class MapTest {
	public static void main(String[] args) {
		List<String> list = new ArrayList<String>();
		list.add("java");
		list.add("python");
		list.get(1); //첫번째 자리에 있는 것을 뽑아줘
		
		Map<Integer, String> map = new HashMap<Integer, String>();
		map.put(1, "홍길동");
		map.put(2, "이순신"); 
		map.put(3, "이순신"); 
		
		map.get(1); //키가 1번인 얘를 뽑아줘
		
	}
	
}


