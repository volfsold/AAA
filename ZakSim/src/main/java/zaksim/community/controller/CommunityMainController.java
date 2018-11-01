package zaksim.community.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import zaksim.community.service.CommunityListService;

// 커뮤니티 메인 화면
@Controller
@RequestMapping(value="/zaksim/community")
public class CommunityMainController {

	private static final Logger logger = LoggerFactory.getLogger(CommunityMainController.class);
	@Autowired CommunityListService communityListService;

	
	// 메인 화면 GET
	@RequestMapping(value="/communityMain", method=RequestMethod.GET)
	public void commnunityMain(Model model) {
		
//		model.addAttribute("joinedGroupLIst", communityListService.joinedGroupList());
		model.addAttribute("joinedGroupLIst", communityListService.test());
		model.addAttribute("keywordList", communityListService.test2());
		model.addAttribute("popularGroupList", communityListService.popularGroupList());
		model.addAttribute("newGroupList", communityListService.newGroupList());
		model.addAttribute("categoryList", communityListService.categoryList());
		
	}

	
	// 검색 POST ( 검색결과 return )
	public String seachCommunityProcess(HttpServletRequest request, Model model) {
		
		return "";
	}
	
	// 검색된 화면  GET
	@RequestMapping(value="/searchCommunity", method=RequestMethod.GET)
	public void searchCommnunity(Model model) { }

			
	
}
