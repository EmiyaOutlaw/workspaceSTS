package com.kh.shop.service;

import java.util.List;

import com.kh.shop.vo.ClassVO;
import com.kh.shop.vo.StudentVO;

public interface StudentService {
	
	//반 조회
	List<ClassVO> selectClassList();
	
	//학생 조회
	List<StudentVO> selectStudentList(ClassVO classVO);
	
	//학생 개인정보 조회
	StudentVO selectstuDetail(int StuNum);
	
}
