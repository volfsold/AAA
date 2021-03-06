package zaksim.community.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import zaksim.community.service.CommunityListService;
import zaksim.community.service.CommunityMemberListService;

// 가입된 커뮤니티
@Controller
@RequestMapping(value="/zaksim/community")
public class CommunityJoinController {
	
	@SuppressWarnings("unused")
	private static final Logger logger = LoggerFactory.getLogger(CommunityMainController.class);
	@Autowired CommunityListService communityListService;
	@Autowired CommunityMemberListService communityMemberListService;

	// 해당 커뮤니티 화면 GET
	@RequestMapping(value="/enrollCommunity", method=RequestMethod.GET)
	public void joinCommunity(Model model, HttpSession session, HttpServletRequest request) {
		
			// 그룹 idx 가져옴
			String idx = request.getParameter("idx");
			
			// 그룹 정보 넘기기
			model.addAttribute("groupInfo", communityListService.info(Integer.parseInt(idx)));
			
			// 키워드 가져오기
			model.addAttribute("keywordList", communityListService.keywordList());
			

	}
	

	
	// 커뮤니티 탈퇴 POST
	public String exitCommunity(int idx, HttpSession session) {
		
		return "";
	}
	
	// 커뮤니티 강퇴(AJAX)? POST 
	public ModelAndView fireCommunity(int idx) {
		
		ModelAndView  modelAndView = new ModelAndView();
		
		return modelAndView;
	}
	
	// 가입된 커뮤니티 없을 시 화면 GET
	@RequestMapping(value="/noJoinCommunity", method=RequestMethod.GET)
	public void nullCommunity() {
		
	}
	
	//, int idx
	// 커뮤니티 참여자 보기 GET
	@RequestMapping(value="/joinMember", method=RequestMethod.GET)
	public void joinMember(Model model, HttpServletRequest request) {
		
		String idx = request.getParameter("idx");
		
		// 그룹 정보 넘기기
		model.addAttribute("groupInfo", communityListService.info(Integer.parseInt(idx)));
		
		// 맴버 정보
		model.addAttribute("members", communityMemberListService.members());

	}
	
//	// 참여하고 있는 모임 ( 자세히 보기 )  GET
//	// int idx
//	@RequestMapping(value="/enrollCommunity", method=RequestMethod.GET)
//	public void enrollCommunity(Model model   ) {
//		
//	}
	
	@RequestMapping(value="/detailCommunity", method=RequestMethod.GET)
	public void detailCommunity(Model model   ) {
		
	}
	
	// 인증하는 화면 GET
	@RequestMapping(value="/certificationCommunity", method=RequestMethod.GET)
	public void certification() {
		
	}
	
	// 날짜 선택 시 인증화면( AJAX )  POST 
	public ModelAndView selectCertification() {
		
		ModelAndView modelAndView = new ModelAndView();
		
		return modelAndView;
	}
	
}
