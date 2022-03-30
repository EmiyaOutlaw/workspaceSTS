package com.kh.shop.service;


import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.shop.vo.ClassVO;
import com.kh.shop.vo.StudentVO;


@Service("studentService")
public class StudentServiceImpl implements StudentService {
	
	@Autowired
	private SqlSessionTemplate sqlSession;





	@Override
	public List<ClassVO> selectClassList() {
		return sqlSession.selectList("studentMapper.selectClassList");

	}



	@Override
	public List<StudentVO> selectStudentList(ClassVO classVO) {

		return sqlSession.selectList("studentMapper.selectStuList", classVO);

	}



	@Override
	public StudentVO selectstuDetail(String stuNum) {
		
		return sqlSession.selectOne("studentMapper.selectstuDetail", stuNum);
	}



	@Override
	public void updateScore(StudentVO studentVO) {

		sqlSession.update("studentMapper.updateScore", studentVO);
	}
}
