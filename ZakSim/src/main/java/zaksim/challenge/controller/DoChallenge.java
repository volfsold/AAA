package zaksim.challenge.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import zaksim.dto.Challenge;
import zaksim.dto.Payment;
import zaksim.dto.ZakSimMember;

@Controller
@RequestMapping(value="/zaksim/challenge")
public class DoChallenge {

	private static final Logger logger = LoggerFactory.getLogger(DoChallenge.class);
	
	
	// 도전하기 - view 띄우기
	@RequestMapping(value="/doChallenge", method=RequestMethod.GET)
	public void doChallengeGet(HttpSession session, Model model) {
		
		

		session.setAttribute("login", true); // 로그인 상태 세션
		session.setAttribute("userId", "user123"); // 로그인 id 세션
		session.setAttribute("userNick", "왓따"); 
		
		
		ZakSimMember user = new ZakSimMember();
		
		
		// 유저 조회
		user.setName("아이린");
		user.setEmail("user123@naver.com");
		user.setPhone("010-1234-5678");
		
		
		
		model.addAttribute("user",user);
	
		
		logger.info("price모델 : "+model);
		
		
		
	}

	
	// 도전금 결제 - 도전정보 전달
	@RequestMapping(value="/priceChallenge", method=RequestMethod.GET)
	public String priceChallengeGet(Model model,Challenge chal,String startDate) {
		
		//도전명,시작일,종료일 정보
		logger.info("도전설정 활성화");
		logger.info("도전정보 : "+chal);
		
		model.addAttribute("info", chal);

		
		return "/zaksim/challenge/include/priceInclude";
	}
	
	
	
	// 도전 정보 DB 전송
	@RequestMapping(value="/priceChallenge", method=RequestMethod.POST)
	public String priceChallengePost(Model model,ZakSimMember member, Challenge chal, Payment pay) {
		
		logger.info("price POST 활성화");
		logger.info("도전 정보 : "+chal);
		logger.info("도전금 모델 : "+model);
		
		DoChallenge dc = new DoChallenge();
		
		
		
		// 도전금 정보 받기
		
		
		
		// 챌린지DB insert
				
		// paymentDB insert
		
		// 데이터 전달 (boolean=true 일때)
		return dc.vowChallengeGet(model, chal, pay);
	}
	
	
	// 서약서 작성
	@RequestMapping(value="/vowChallenge", method=RequestMethod.GET)
	public String vowChallengeGet(Model model, Challenge chal, Payment pay) {
		
		
		logger.info("도전금 결제 활성화");
		logger.info("결제정보 : "+model);
		
	
		
		
		return "/zaksim/challenge/include/vowInclude";
				
	}
	
	@RequestMapping(value="/vowChallenge", method=RequestMethod.POST)
	public void vowChallengePost(Model model, Challenge chal, Payment pay) {
		
		
		logger.info("도전금 결제 활성화");
		logger.info("결제정보 : "+model);
		
	
		
				
	}
	
	
	// 도전 안내사항
	@RequestMapping(value="/endChallenge", method=RequestMethod.GET)
	public String endChallengeGet() {
		
		
		return "/zaksim/challenge/include/endInclude";
	}
	
	

	
}
