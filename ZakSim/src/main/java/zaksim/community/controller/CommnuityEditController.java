package zaksim.community.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import zaksim.community.service.CommunityEditService;
import zaksim.community.service.CommunityListService;
import zaksim.dao.CommunityEditDAO;
import zaksim.dto.CommunityCategory;
import zaksim.dto.CommunityGroup;
import zaksim.dto.GroupKeyword;

// 커뮤니티 편집
@Controller
@RequestMapping(value="/zaksim/community")
public class CommnuityEditController {

	private static final Logger logger = LoggerFactory.getLogger(CommunityMainController.class);
	@Autowired CommunityListService communityListService; 
	@Autowired CommunityEditService communityEditService;
	@Autowired ServletContext context;

	// 커뮤니티 만들기 POST
	@RequestMapping(value="/createCommunity", method=RequestMethod.POST)
	public String createCommnunityProcess(CommunityGroup communityGroup, MultipartFile file, 
																GroupKeyword groupKeyword, HttpSession session, int category) {
		

		if(file.getOriginalFilename()== null || file.getOriginalFilename().equals("")) {
			communityGroup.setImage("/resources/image/community/sample.png");
		} else {
			String path = "/resources/upload/community/";
			String realpath = context.getRealPath(path);
			String uid = UUID.randomUUID().toString().split("-")[4];
			String stored = uid+"_"+file.getOriginalFilename();
			File dest = new File(realpath, stored);
			
			try {
				file.transferTo(dest);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}			
			
			communityGroup.setImage("/resources/upload/community/"+stored);
		}

		// 회원 인덱스 가져오기
		String userIdx  = (String)session.getAttribute("userIdx");
		
		// 카테고리 가져오기
		communityEditService.getCategoryIdx(category);

		
		communityGroup.setCategory_idx(communityEditService.getCategoryIdx(category));
		communityGroup.setMember_idx(Integer.parseInt(userIdx));
		
		// 커뮤니티 그룹 생성	
		int group_idx = communityEditService.createGroup(communityGroup);

		
		// 키워드 가져오기
		String keyword1 = groupKeyword.getKeyword();
		
		// 커뮤니티그룹 인덱스 가져오기
		groupKeyword.setGroup_idx(group_idx);
		

		String[] keywordArray = keyword1.split("#");
		

		// 키워드 저장
		for(int i=1; i<keywordArray.length; i++) {
			groupKeyword.setKeyword(keywordArray[i]);
			communityEditService.createKeyword(groupKeyword);
		}
		
		String result = "redirect:/zaksim/community/communityMain";
		return result;
	}

	
	
	// 커뮤니티 정보 수정 POST
	@RequestMapping(value="/updateCommunity", method=RequestMethod.POST)
	public String updateCommnunityProcess(CommunityGroup communityGroup, MultipartFile file,
											String keyword, HttpSession session, int category, 
											int commGroupIdx) {
	
		/*
		 *  키워드 수정
		 */
		
		// 1. 키워드 삭제
		communityEditService.deleteKeyword(commGroupIdx);
		
		// 2. 입력받은 키워드 불러오기
		String[] keywordArray = keyword.split("#");
		GroupKeyword g = new GroupKeyword();

		// 3. 키워드 저장
		for(int i=1; i<keywordArray.length; i++) {
			g.setGroup_idx(commGroupIdx);
			g.setKeyword(keywordArray[i]);
			communityEditService.createKeyword(g);
		}

		/*
		 * 커뮤니티 그룹 수정
		 */
		

		// 회원 인덱스 가져오기
		String userIdx  = (String)session.getAttribute("userIdx");
		
		communityGroup.setMember_idx(10);
		communityGroup.setIdx(commGroupIdx);
//		communityGroup.setMember_idx(Integer.parseInt(userIdx));
		
		// 카테고리 가져옴
		communityGroup.setCategory_idx(category);
		
		// 이미지 가져옴
		if(file.getOriginalFilename()== null || file.getOriginalFilename().equals("")) {
			communityGroup.setImage("/resources/image/community/sample.png");
		} else {
			String path = "/resources/upload/community/";
			String realpath = context.getRealPath(path);
			String uid = UUID.randomUUID().toString().split("-")[4];
			String stored = uid+"_"+file.getOriginalFilename();
			File dest = new File(realpath, stored);
			try {
				file.transferTo(dest);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}			
			communityGroup.setImage("/resources/upload/community/"+stored);
		}
		
		
		System.out.println("커뮤니티 정보!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! : "+communityGroup.toString());
		
//		idx=0, member_idx=0, category_idx=0, title=1, content=111111, 
//		image=/resources/image/community/sample.png, max=11, open_date=null, secret=0, password=
		
//		communityEditService.updateGroup(communityGroup.getIdx());
		
		
		String result = "redirect:/zaksim/community/enrollCommunity?idx="+commGroupIdx;
		return result;


	}
	
	// 커뮤니티 삭제 GET
	@RequestMapping(value="/deleteCommunity", method=RequestMethod.GET)
	public String deleteCommnunityProcess(String idx) {
		
		int newIdx = Integer.parseInt(idx);
		// 키워드 삭제
		communityEditService.deleteKeyword(newIdx);
		// 그룹 삭제
		communityEditService.deleteGroup(newIdx);
				
		
		return "redirect:/zaksim/community/communityMain";
	}
}
