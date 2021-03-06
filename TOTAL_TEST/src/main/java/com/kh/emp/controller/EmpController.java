package com.kh.emp.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.emp.service.EmpService;
import com.kh.emp.vo.DepartmentVO;
import com.kh.emp.vo.WorkerVO;

@Controller
@RequestMapping("/emp")
public class EmpController {
	@Resource(name = "departmentService")
	private EmpService departmentService;
	
	
	//첫 시작 화면 뛰우기
	@GetMapping("/deptManage")
	public String boardList() {	
		
		return "main/start_page";
	}
	
	
	//부서 관리 페이지로 이동
	@GetMapping("/manageDepartment")
	public String manageDepartment(DepartmentVO departmentVO, Model model) {
		
		model.addAttribute("departmentList", departmentService.select_department_lists(departmentVO));
		return "main/manage_department";
	}
	
	//부서 등록하기 밑 alert 뛰우기
	@PostMapping("/addDepartment")
	public String addDepartment(DepartmentVO departmentVO) {
		
		
		 departmentService.addDepartment(departmentVO);
		return "reg_dept_result";
	}
	
	//홈 화면으로 이동
	@GetMapping("/goStartPage")
	public String goStartPage() {
		
		
		return "main/start_page";
	}
	
	//사원 등록 페이지로 이동
	@GetMapping("/regWorker")
	public String regWorker(DepartmentVO departmentVO, Model model) {
		model.addAttribute("deptInfoLists", departmentService.select_department_lists(departmentVO));
		return "main/reg_worker";
	}
	
	//사원 등록 밑 alert 뛰우기
	@PostMapping("/addWorker")
	public String addWorker(WorkerVO workerVO ) {
		departmentService.addWorker(workerVO);
		
		return "reg_worker_rusult";
	}
	
	
	//사원 목록 페이지로 이동
	@GetMapping("/workerList")
	public String workerList(WorkerVO workerVO, Model model) {
		
		model.addAttribute("workerLists", departmentService.selectWorkerlists(workerVO));
		return "main/worker_lists";
	}
	
}














