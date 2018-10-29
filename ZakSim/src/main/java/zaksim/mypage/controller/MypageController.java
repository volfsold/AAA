package zaksim.mypage.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import zaksim.mypage.controller.MypageController;


@Controller

public class MypageController {
	
	private static final Logger logger = LoggerFactory.getLogger(MypageController.class);
	
//	@Autowired MypageService mypageservice;
//	@Autowired CommunityService communityservice;
//	@Autowired ChallengeService challengeservice;
	
	@RequestMapping(value="/mypage/main", method=RequestMethod.GET)
	public ModelAndView MypageMain() {
		
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
	

	@RequestMapping(value="/mypage/update", method=RequestMethod.GET)
	public void MypageUpdate() {
		
	}
	
	
	@RequestMapping(value="/mypage/update", method=RequestMethod.POST)
	public String MypageUpdateProcess() {
		
		
		String result = "redirect:/mypage/main";
		
		return result;
	}
	
	
	@RequestMapping(value="/mypage/groups", method=RequestMethod.GET)
	public void MypageGroups() {
		
	}
	
	
	@RequestMapping(value="/mypage/challenge", method=RequestMethod.GET)
	public void MypageChallenge() {
		
	}
	

	@RequestMapping(value="/mypage/delete", method=RequestMethod.GET)
	public void MypageDelete() {
		
	}
	
	
	@RequestMapping(value="/mypage/sign", method=RequestMethod.POST)
	public String MypageSign() {
		
		
		String result = "redirect:/mypage/update";
		
		return result;
	}
	
	
//	@RequestMapping(value="/mypage/nologin", method=RequestMethod.GET)
//	public void noLogin() {
//		logger.info("로그인되지 않았습니다");
//	}
	
	
}
