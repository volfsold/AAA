package zaksim.community.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

// 가입된 커뮤니티
@Controller
@RequestMapping(value="/zaksim/community")
public class CommunityJoinController {
	
	private static final Logger logger = LoggerFactory.getLogger(CommunityMainController.class);


	// 해당 커뮤니티 화면 GET
	public void joinCommunity(Model model, HttpSession session) {
		
	}
	
	// 커뮤니티 가입하기 POST
//	public String joinCommunityProcess(HttpSession session, GroupMember groupMember) {
//		
//		return "";
//	}
	
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
	
	// 커뮤니티 참여자 보기 GET
	public void joinMember(Model model, int idx) {
		
	}
	
	// 참여하고 있는 모임 ( 자세히 보기 )  GET
	// int idx
	@RequestMapping(value="/enrollCommunity", method=RequestMethod.GET)
	public void enrollCommunity(Model model   ) {
		
	}
	
	// 인증하는 화면 GET
	public void certification() {
		
	}
	
	// 날짜 선택 시 인증화면( AJAX )  POST 
	public ModelAndView selectCertification() {
		
		ModelAndView modelAndView = new ModelAndView();
		
		return modelAndView;
	}
	
}
