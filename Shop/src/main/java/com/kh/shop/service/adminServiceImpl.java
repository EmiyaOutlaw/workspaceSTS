package com.kh.shop.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.shop.vo.ImgVO;
import com.kh.shop.vo.ItemVO;
import com.kh.shop.vo.MenuVO;
import com.kh.shop.vo.SubMenuVO;

@Service("adminService")
public class adminServiceImpl implements adminService {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public void insertItem(ItemVO itemVO) {	
		sqlSession.insert("adminMapper.insertItem", itemVO);
		
	}

	@Override
	public List<MenuVO> selectMenuLIst() {
		return sqlSession.selectList("adminMapper.selectMenuList");
	}

	@Override
	public List<SubMenuVO> selectSubMenuList(String menuCode) {

		return sqlSession.selectList("adminMapper.selectSubMenuList", menuCode);
	}

	@Override
	public void insertImages(ImgVO imgVO) {
		sqlSession.insert("adminMapper.insertImages", imgVO);
	}

	@Override
	public int selectNextImgCode() {
		//데이터 조회가 하나만 되면 selectOne. 여러개면 selectList
		return sqlSession.selectOne("adminMapper.selectNextImgCode");
	}

	@Override
	public String selectNextItemCode() {
		
		return sqlSession.selectOne("adminMapper.selectNextItemCode");
	}
}
