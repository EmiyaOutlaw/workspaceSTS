package com.kh.emp.service;

import java.util.List;

import com.kh.emp.vo.DepartmentVO;
import com.kh.emp.vo.WorkerVO;

public interface EmpService {

	//부서 등록하기
	void addDepartment(DepartmentVO departmentVO);
	
	//부서 목록 조회
	List<DepartmentVO> select_department_lists(DepartmentVO departmentVO);
	
	//사원 등록
	void addWorker(WorkerVO workerVO);
	
	void addDeptName(DepartmentVO departmentVO);
}
