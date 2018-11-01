package zaksim.challenge.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import zaksim.dto.Challenge;
import zaksim.dto.Payment;

@Controller
@RequestMapping(value="/zaksim/challenge")
public class DoChallenge {

	private static final Logger logger = LoggerFactory.getLogger(DoChallenge.class);
	
	
	// 도전하기 get
	@RequestMapping(value="/doChallenge", method=RequestMethod.GET)
	public void doChallengeGet() {
		
		
		
	}

	
	// 도전금 결제
	@RequestMapping(value="/priceChallenge", method=RequestMethod.GET)
	public String priceChallengeGet(Model model,Challenge chal) {
		
		//도전명,시작일,종료일 정보
		logger.info("도전설정 활성화");
		logger.info("도전정보 : "+chal);
			
		
		return "/zaksim/challenge/include/priceInclude";
	}
	
	// 서약서 작성
	@RequestMapping(value="/vowChallenge", method=RequestMethod.GET)
	public String vowChallengeGet(Model model, Challenge chal, Payment pay) {
		
		
		logger.info("도전금 결제 활성화");
		logger.info("결제정보 : "+model);
		// 도전금 정보 받기
		
		// 챌린지DB insert
		
		// paymentDB insert
		
		return "/zaksim/challenge/include/vowInclude";
	}
	
	// 도전 안내사항
	@RequestMapping(value="/endChallenge", method=RequestMethod.GET)
	public void endChallengeGet() {
		
	}
	

	
}
