package zaksim.community.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import zaksim.community.service.CommunityListService;
import zaksim.community.service.CommunitySearchService;

// 커뮤니티 메인 화면
@Controller
@RequestMapping(value="/zaksim/community")
public class CommunityMainController {

	private static final Logger logger = LoggerFactory.getLogger(CommunityMainController.class);
	@Autowired CommunityListService communityListService;
	@Autowired CommunitySearchService  communitySearchService;

	
	// 메인 화면 GET
	@RequestMapping(value="/communityMain", method=RequestMethod.GET)
	public void commnunityMain(Model model, HttpSession session ) {
		
		session.setAttribute("userId", "김혁수");
		session.setAttribute("userIdx", "10");

		// 가입한 그룹
		model.addAttribute("joinedGroupLIst", communityListService.joinedGroupList());
		
		// 키워드 리스트
		model.addAttribute("keywordList", communityListService.keywordList());
		
		// 인기있는 그룹
		model.addAttribute("popularGroupList", communityListService.popularGroupList());
		
		// 새로운 그룹
		model.addAttribute("newGroupList", communityListService.newGroupList());
		
		// 카테고리 그룹
		model.addAttribute("categoryList", communityListService.categoryList());
		
	}

	
	// 검색 POST ( 검색결과 return )
	@RequestMapping(value="/searchCommunity", method=RequestMethod.POST)
	public String searchCommunityProcess(Model model, String selectSearch, String searchContent) {


		if(selectSearch.equals("communutyName")) {
		
			model.addAttribute("searchGroup", communitySearchService.searchGroup(searchContent));
			model.addAttribute("keywordList", communityListService.keywordList());
			model.addAttribute("selectSearch", selectSearch);
			model.addAttribute("searchContent", searchContent);

		} else if(selectSearch.equals("communutyCategory")) {
			
			model.addAttribute("searchCategoryGroup", communitySearchService.searchCategoryGroup(searchContent));
			model.addAttribute("keywordList", communityListService.keywordList());
			model.addAttribute("selectSearch", selectSearch);
			model.addAttribute("searchContent", searchContent);

		} else {
			model.addAttribute("searchKeywordGroup", communitySearchService.searchKeywordGroup(searchContent));
			model.addAttribute("keywordList", communityListService.keywordList());
			model.addAttribute("selectSearch", selectSearch);
			model.addAttribute("searchContent", searchContent);
		}
		
		
		return "/zaksim/community/searchCommunity";

	}
	
	// 검색된 화면  GET
	@RequestMapping(value="/searchCommunity", method=RequestMethod.GET)
	public void searchCommnunity(Model model) { }

			
	
}
