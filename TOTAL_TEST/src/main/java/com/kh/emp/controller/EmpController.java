package com.kh.emp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/emp")
public class EmpController {
	
	@GetMapping("/deptManage")
	public String boardList() {
		
		return "main/start_page";
	}
	
	@GetMapping("/manageDepartment")
	public String manageDepartment() {
		
		return "main/manage_department";
	}
	
}














