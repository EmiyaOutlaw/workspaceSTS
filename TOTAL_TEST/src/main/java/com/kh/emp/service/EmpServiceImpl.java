package com.kh.emp.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.emp.vo.DepartmentVO;
import com.kh.emp.vo.WorkerVO;

@Service("departmentService")
public class EmpServiceImpl implements EmpService{
	@Autowired
	private SqlSessionTemplate sqlSession;

	
	//부서 등록
	@Override
	public void addDepartment(DepartmentVO departmentVO) {

		sqlSession.insert("empMapper.addDepartment", departmentVO);
	}


	@Override
	public List<DepartmentVO> select_department_lists(DepartmentVO departmentVO) {
		
		return sqlSession.selectList("empMapper.select_department_lists", departmentVO);
	}


	@Override
	public void addWorker(WorkerVO workerVO) {
		sqlSession.insert("empMapper.addWorker", workerVO);
	}


	@Override
	public List<DepartmentVO> selectWorkerlists(WorkerVO workerVO) {
		return sqlSession.selectList("empMapper.selectWorkerlists", workerVO);
	}


	



	

	
	
	
}
