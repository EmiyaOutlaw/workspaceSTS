package com.kh.shop.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.kh.shop.service.adminService;
import com.kh.shop.service.itemService;
import com.kh.shop.vo.ImgVO;
import com.kh.shop.vo.ItemVO;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Resource(name="adminService")
	private adminService adminService;
	@Resource(name="itemService")
	private itemService itemService;
	

	//카테고리 관리 페이지로 이동 (상단에 관리자 메뉴 클릭 시 실행)
	@GetMapping("/categoryManage")
	public String categoryManage(Model model, String menuCode, String subMenuCode) {
		
		//관리자 메뉴 목록 조회 
		model.addAttribute("menuList", adminService.selectMenuLIst());

		if(menuCode == null) {
			menuCode = "MENU_001";
		}
		
		if(subMenuCode == null) {
			subMenuCode = "SUB_MENU_001";
			
		}
	
		model.addAttribute("selectedSubMenu", subMenuCode); //SUB_MENU_001 OR SUB_MENU_002
		
		//현재 menuCode 전송 
		model.addAttribute("selectedMenu", menuCode); //Menu_001 or Menu_002

		//하위 메뉴 목록 조회
		model.addAttribute("subMenuList", adminService.selectSubMenuList(menuCode));
		

		
		return "admin/category_manage";
	}
	
		//상품 등록 페이지로 이동 
		@GetMapping("/regItem")
		public String regItem(Model model, String menuCode, String subMenuCode) {
	
		//카테고리 목록 조회
		model.addAttribute("categoryList", itemService.selectCategoryList());
	
		//관리자 메뉴 목록 조회 
		model.addAttribute("menuList", adminService.selectMenuLIst());
				
		//상품 관리 메뉴의 하위 메뉴 목록 조회
		model.addAttribute("subMenuList", adminService.selectSubMenuList(menuCode));
	
		model.addAttribute("selectedMenu", menuCode);
		model.addAttribute("selectedSubMenu", subMenuCode);
		
		
		return "admin/reg_item";
	
		

	}
		
		//상품 관리 페이지로 이동(side)
		@GetMapping("/itemManage")
		public String itemManage(Model model, String menuCode, String subMenuCode) {
			
			
			
			//관리자 메뉴 목록 조회 
			model.addAttribute("menuList", adminService.selectMenuLIst());
					
			//상품 관리 메뉴의 하위 메뉴 목록 조회
			model.addAttribute("subMenuList", adminService.selectSubMenuList(menuCode));
			
			model.addAttribute("selectedMenu", menuCode);
			model.addAttribute("selectedSubMenu", subMenuCode);
			
			return "admin/item_manage";
		}
		
	
	@PostMapping("/regItem")
	// 상품등록
	public String regItem(ItemVO itemVO, MultipartHttpServletRequest multi) {
		
		//여러 이미지 정보를 세팅할 공간 생성
		List<ImgVO> imgList = new ArrayList<ImgVO>();
		
		//이미지 삽입 쿼리 실행 시 빈값을 채워줄 객체
		ImgVO imgVO = new ImgVO();
		
		
		//1
		//2
		//3
		//....
		//10
		//다음에 들어갈 IMG_CODE값을 조회
		
		int nextImgCode = adminService.selectNextImgCode();
		
		
		//다음에 들어갈 ITEM_CODE값을 조회
		
		String nextItemCode = adminService.selectNextItemCode();
		
		
		//이미지 첨부(파일 업로드)
		//첨부파일이 들어가는 input 태그들의 name 속성값을 가져온다. 
		Iterator<String> inputTagNames = multi.getFileNames();
	
		
		//첨부파일이 저장 될 위치를 지정 
		String uploadPath = "D:\\Git\\workspaceSTS\\Shop\\src\\main\\webapp\\resources\\images\\";
		
		
		//첨부 파일이 들어간 input 태그의 개수만큼 반복 
		while(inputTagNames.hasNext()) {
			String inputTagName = inputTagNames.next();
			//"mainImg", "subImg"
			
			//다중 첨부....
			if(inputTagName.equals("subImg")) {
				List<MultipartFile> fileList = multi.getFiles(inputTagName);
				
				for(MultipartFile file : fileList) {
					//원본 파일명
					String originFileName = file.getOriginalFilename();
					
					
					if(!originFileName.equals("")) {
						//첨부할 파일명
						String attachedFileName = System.currentTimeMillis() + "_" + originFileName;
						try {
							file.transferTo(new File(uploadPath + attachedFileName));
							
							ImgVO vo = new ImgVO();
							
							vo.setImgCode(nextImgCode++); // ex) 8, 9, 10
							vo.setOriginImgName(originFileName);
							vo.setAttachedImgName(attachedFileName);
							vo.setIsMain("N");
							vo.setItemCode(nextItemCode);
							imgList.add(vo);
							
							
						} catch (IllegalStateException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						} catch (IOException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						
					}
					
					}
					
				}
				
				
			}
			
			//단일 첨부...
			else{
				
				//name이 "mainImg"인 input 태그의 파일 정보를 가져 옴 
				MultipartFile file = multi.getFile(inputTagName);
				
				
				
				//첨부하고자 하는 파일명 
				String originFileName = file.getOriginalFilename();
				
				if(!originFileName.equals("")) {
					//첨부할 파일명
					//1640104_자바.jpg
					String attachedFileName = System.currentTimeMillis() + "_" + originFileName;

					//파일 업로드 
					//매개변수로 경로 및 파일명을 넣어줌
					try {
						file.transferTo(new File(uploadPath + attachedFileName));
						
						
						ImgVO vo = new ImgVO();
						vo.setImgCode(nextImgCode++);
						vo.setOriginImgName(originFileName);
						vo.setAttachedImgName(attachedFileName);
						vo.setIsMain("Y");
						vo.setItemCode(nextItemCode);
						imgList.add(vo);
						
						
					} catch (IllegalStateException e) {
						e.printStackTrace();
					} catch (IOException e) {
						e.printStackTrace();
					}
				}
				
		
				
			}
		}
		
		//---------------이미지 첨부 끝-------------
		
		
		
		//상품 정보 INSERT (SHOP_ITEM)
		itemVO.setItemCode(nextItemCode);
		imgVO.setImgList(imgList);		
		adminService.insertItem(itemVO, imgVO);
		
		//상품 이미지 정보 INSERT(ITEM_IMAGE)
		//adminService.insertImages(imgVO);
		
		
		
		
		return "redirect:/admin/regItem?menuCode=MENU_001&subMenuCode=SUB_MENU_002";
	}
	
	
	//회원 목록 페이지로 이동 
	@GetMapping("/memberList")
	public String memberList(Model model, String menuCode, String subMenuCode) {
		
		
		//관리자 메뉴 목록 조회 
		model.addAttribute("menuList", adminService.selectMenuLIst());
				
		//상품 관리 메뉴의 하위 메뉴 목록 조회
		model.addAttribute("subMenuList", adminService.selectSubMenuList(menuCode));
		
		if(subMenuCode == null) {
			subMenuCode = "SUB_MENU_004";
			
		}
		
		
		model.addAttribute("selectedMenu", menuCode);
		model.addAttribute("selectedSubMenu", subMenuCode);		
		
		
		return "admin/member_list";
	}
	
	//구매 목록 관리
	@GetMapping("/manageBuyList")
	
	public String selectBuyList(Model model, String menuCode, String subMenuCode) {
		
		//카테고리 목록 조회
		model.addAttribute("categoryList", itemService.selectCategoryList());
	
		//관리자 메뉴 목록 조회 
		model.addAttribute("menuList", adminService.selectMenuLIst());
				
		//상품 관리 메뉴의 하위 메뉴 목록 조회
		model.addAttribute("subMenuList", adminService.selectSubMenuList(menuCode));
	
		model.addAttribute("selectedMenu", menuCode);
		model.addAttribute("selectedSubMenu", subMenuCode);
		
		model.addAttribute("buyList", adminService.selectBuyList());
		
		return "admin/manage_buy_list";
	}
	
	
	
	
	
	//구매 목록 검색
	@PostMapping("/searchBuyList")
	public String searchBuyList(Model model, String menuCode, String subMenuCode) {
		
		//카테고리 목록 조회
		model.addAttribute("categoryList", itemService.selectCategoryList());
	
		//관리자 메뉴 목록 조회 
		model.addAttribute("menuList", adminService.selectMenuLIst());
				
		//상품 관리 메뉴의 하위 메뉴 목록 조회
		model.addAttribute("subMenuList", adminService.selectSubMenuList(menuCode));
	
		model.addAttribute("selectedMenu", menuCode);
		model.addAttribute("selectedSubMenu", subMenuCode);
		
		
		
		return "admin/search_buy_list";
	}
	
}
