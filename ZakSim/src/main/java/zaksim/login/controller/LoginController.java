package zaksim.login.controller;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import zaksim.dto.ZakSimMember;
import zaksim.login.service.ZakSimMemberService;

/*
 * 작성일 : 2018.10.18
 * 작성자 : 권미현
 */
/**
 * 로그인 관련 Controller
 */
@Controller
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Autowired ZakSimMemberService memberService;
	
	// 로그인
	@RequestMapping(value="/zaksim/login/login", method=RequestMethod.GET)
	public void loginPage() {
		
	}
	@RequestMapping(value="/zaksim/login/login", method=RequestMethod.POST)
	public String login(HttpSession session, ZakSimMember memberDto) {
		logger.info(memberDto.getId() + " / " + memberDto.getPassword());
		
		if ( memberService.login(memberDto) ) {
			memberDto = memberService.memberInfo(memberDto);
			
			// 로그인 후, 회원정보 가져오기 테스트 - 완료
//			logger.info(memberDto.getId().toString());
//			logger.info(memberDto.getNick().toString());
//			logger.info(memberDto.getMemberType());
			
			session.setAttribute("login", true);
			session.setAttribute("id", memberDto.getId());
			session.setAttribute("nick", memberDto.getNick());
			
			logger.info("로그인 완료!");
			
			return "redirect:/zaksim/main/home"; // 메인화면으로 리다이렉트
			
		} else {
			logger.info("로그인 실패! 아이디 혹은 비밀번호를 확인해주세요.");
			
			return "redirect:/zaksim/login/login"; // 로그인 실패시 로그인 화면으로 리다이렉트
		}
		
	}
	
	// 로그아웃
	@RequestMapping(value="/zaksim/login/logout", method=RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		
		return "redirect:/zaksim/main/home"; // 메인화면으로 리다이렉트
	}
	
	// 아이디 찾기
	@RequestMapping(value="/zaksim/login/findId", method=RequestMethod.GET)
	public void findIdPage() {
		
	}
	@RequestMapping(value="/zaksim/login/findId", method=RequestMethod.POST)
	public String findId(Model model) {
		
		
		return "redirect:/zaksim/login/login"; // TODO: 리다이렉트는 jsp 쪽에서 하자
	}
	
	
	// 비밀번호 찾기
	@RequestMapping(value="/zaksim/login/findPw", method=RequestMethod.GET)
	public void findPwPage() {
		
	}
	@RequestMapping(value="/zaksim/login/findPw", method=RequestMethod.POST)
	public String findPw() {
		return "redirect:/zaksim/login/login";
	}
	
	// 회원가입
	@RequestMapping(value="/zaksim/login/join_terms", method=RequestMethod.GET)
	public void joinTermsPage() {
		
	}
	@RequestMapping(value="/zaksim/login/join", method=RequestMethod.GET)
	public String joinPage() {
		return "zaksim/login/join";
	}
	@RequestMapping(value="/zaksim/login/join", method=RequestMethod.POST)
	public String join(ZakSimMember memberDto) {
		return "redirect:/zaksim/login/login";
	}
	// 회원가입 - 아이디 중복체크
	@RequestMapping(value="/zaksim/login/joinAjax", method=RequestMethod.POST)
	public void joinAjax(HttpServletResponse response) {
		
	}
}
