package zaksim.login.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
	@RequestMapping(value="/zaksim/login/findId", method=RequestMethod.POST
			, produces="application/json; charset=utf-8"/* 한글처리 */)
	@ResponseBody // ajax 쓰기 위한 방법(jackson-databind 라이브러리를 이용한 출력 방법)
	public Map<String, String> findId(String name, String email) {
		logger.info("데이터 제출");
		logger.info("이름 : " + name + " / 이메일 : " + email);
		
		String id = memberService.findId(name, email);		
		logger.info("찾은 ID : " + id);
		
		Map<String, String> map = new HashMap<>();
		map.put("findId", id);
		return map;
	}
	
	
	// 비밀번호 찾기
	@RequestMapping(value="/zaksim/login/findPw", method=RequestMethod.GET)
	public void findPwPage() {
		
	}
	@RequestMapping(value="/zaksim/login/findPw", method=RequestMethod.POST
			, produces="application/json; charset=utf-8"/* 한글처리 */)
	@ResponseBody // ajax 쓰기 위한 방법(jackson-databind 라이브러리를 이용한 출력 방법)
	public Map<String, Object> findPw(String id, String name, String email) {
		logger.info("데이터 제출");
		logger.info("아이디 : " + id + " / 이름 : " + name + " / 이메일 : " + email);
		
		String pw = memberService.findPw(id, name, email);
		Map<String, Object> map = new HashMap<>();
		if ( pw != null ) {
			map.put("findPwResult", true); // 결과 반환(비밀번호 찾기 완료)
			map.put("temPw", pw); // 임시 비밀번호 반환(이메일 발송 기능 전에 잠시 사용하기로...) TODO: 이메일 발송 기능 후, 삭제바람
		} else {
			map.put("findPwResult", false); // 결과 반환(비밀번호 찾기 실패-정보 없음)
		}
		return map;
//		return "redirect:/zaksim/login/login"; // TODO: 리다이렉트는 jsp 쪽에서 하자
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
