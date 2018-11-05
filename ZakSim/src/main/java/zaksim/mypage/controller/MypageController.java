package zaksim.mypage.controller;

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

import zaksim.dto.ZakSimMember;
import zaksim.mypage.controller.MypageController;
import zaksim.mypage.service.MypageService;


@Controller
@RequestMapping(value="/zaksim/mypage")
public class MypageController {
	
	private static final Logger logger = LoggerFactory.getLogger(MypageController.class);
	
	@Autowired MypageService mypageService;
	
	
	@RequestMapping(value="/main", method=RequestMethod.GET)
	public void MypageMain() {
		
	}

	
	@RequestMapping(value="/update", method=RequestMethod.GET)
	public String MypageUpdate (Model model, HttpSession session, ZakSimMember memberDto) {
//		 logger.info("update");
		 
		 memberDto = mypageService.memberInfo((String)session.getAttribute("login_id"));
		 
//		 logger.info(memberDto.getNick());
		 
//		 session.setAttribute("login_nick", memberDto.getNick());
//		 session.setAttribute("name", memberDto.getName());
//		 session.setAttribute("phone", memberDto.getPhone());
//		 session.setAttribute("email", memberDto.getEmail());
		 
		 model.addAttribute("userName", memberDto.getName());
		 model.addAttribute("userPhone", memberDto.getPhone());
		 model.addAttribute("userEmail", memberDto.getEmail());

		 return "/zaksim/mypage/update";
	}
	
	
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String MypageUpdateProcess(ZakSimMember memberDto, HttpServletRequest request) {
		logger.info(request.getParameter("newPassword1"));

        mypageService.updateMember(memberDto); 
        
        // 수정된 내용 세션에 반영

		return "redirect:/zaksim/mypage/main";
	}
	
	
	@RequestMapping(value="/groups", method=RequestMethod.GET)
	public void MypageGroups() {
		
		
	}
	
	
	@RequestMapping(value="/challenge", method=RequestMethod.GET)
	public void MypageChallenge() {
		
		
	}
	

	@RequestMapping(value="/mypage/delete", method=RequestMethod.GET)
	public String MypageDelete(HttpSession session) {
		
		mypageService.deleteMember((String)session.getAttribute("id"));
		
		return "redirect:/zaksim/main/home";
	}
	
	
	@RequestMapping(value="/sign", method=RequestMethod.POST)
	public String MypageSign() {
				
		String result;
		
		result ="";
		
		return result;
	}
	
}
