package zaksim.community.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import zaksim.community.service.CommunityListServiceImpl;

// 커뮤니티 분류 화면
@Controller
@RequestMapping(value="/zaksim/community")
public class CommunityClassificationController {

	private static final Logger logger = LoggerFactory.getLogger(CommunityMainController.class);
	@Autowired CommunityListServiceImpl communityListServiceImpl;
	
	// 가입한 커뮤니티 화면 GET
	@RequestMapping(value="/joinCommunity", method=RequestMethod.GET)
	public void joinCommunity(Model model) {
		
	}
		
	// 인기있는 커뮤니티 화면 GET
	@RequestMapping(value="/popularCommunity", method=RequestMethod.GET)
	public void popularCommunity(Model model) {
		
	}
	
	// 새로운 커뮤니티 화면 GET
	@RequestMapping(value="/newCommunity", method=RequestMethod.GET)
	public void newCommunity(Model model) {
		
	}
	
	// 카테고리 화면 GET
	@RequestMapping(value="/categoryCommunity", method=RequestMethod.GET)
	public void category(Model model) {
		model.addAttribute("categoryList", communityListServiceImpl.categoryList());
	}

	// 카테고리 클릭 시 검색 화면 GET

	public void clickCategory( int idx,Model model) {
		
	}

	
}
