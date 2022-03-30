package com.kh.shop.controller;




import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.shop.service.StudentService;
import com.kh.shop.vo.ClassVO;
import com.kh.shop.vo.StudentVO;


@Controller
@RequestMapping("/student")
public class StudentController {

	
	@Resource(name = "studentService")
	private StudentService stuService;
	
	
	@GetMapping("/studentList")
	public String studentList(Model model, ClassVO classVO) {
		
		model.addAttribute("classList", stuService.selectClassList());
		model.addAttribute("stuList", stuService.selectStudentList(classVO));
		
		
		
		return "student_manage";
	}
	
	@ResponseBody //요걸로 페이지 이동인지 아닌지 구별 할 수 있다. 
	@PostMapping("/sutdentListAjax")
	public List<StudentVO> studentListAjax(ClassVO classVO) {
		List<StudentVO> list = stuService.selectStudentList(classVO);
	
		return list;
	}
	
	
	@ResponseBody //요걸로 페이지 이동인지 아닌지 구별 할 수 있다. 
	@PostMapping("/stuDetail")
	public StudentVO stuDetail(String stuNum) {
		
		
		return stuService.selectstuDetail(stuNum);
	}
	
	
	
	@ResponseBody //요걸로 페이지 이동인지 아닌지 구별 할 수 있다. 
	@PostMapping("/updateScore")
	public void updateScore(StudentVO studentVO) {
		
		stuService.updateScore(studentVO);
		
				
	}
	
	
}
