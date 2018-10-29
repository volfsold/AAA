package zaksim.community.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import zaksim.dto.CommunityGroup;

// 커뮤니티 편집
@Controller
@RequestMapping(value="/zaksim/community")
public class CommnuityEditController {

		private static final Logger logger = LoggerFactory.getLogger(CommunityMainController.class);
		
	
		// 커뮤니티 만들기 POST
		@RequestMapping(value="/createCommunity", method=RequestMethod.POST)
		public String createCommnunityProcess(CommunityGroup communityGroup) {

			String result = "redirect:/zaksim/community/communityMain";
			
			return result;
		}
		
		// 커뮤니티 정보 수정 POST
		@RequestMapping(value="/community/")
		public String updateCommnunityProcess(CommunityGroup communityGroup) {
			return "";
		}
		
//		// 커뮤니티 삭제 POST
//		@RequestMapping(value="/community/")
//		public String deleteCommnunityProcess(CommunityGroup communityGroup) {
//			return "";
//		}
		
		

}
