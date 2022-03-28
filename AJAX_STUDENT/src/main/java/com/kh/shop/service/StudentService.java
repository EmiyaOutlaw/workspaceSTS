package com.kh.shop.service;

import java.util.List;

import com.kh.shop.vo.ClassVO;
import com.kh.shop.vo.StudentVO;

public interface StudentService {
	
	//반 조회
	List<ClassVO> selectClass();
	
	//학생 조회
	List<StudentVO> selectStudent();
	
}