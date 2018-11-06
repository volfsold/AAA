package zaksim.challenge.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import zaksim.challenge.service.DoChallengeService;
import zaksim.dto.Challenge;
import zaksim.dto.Payment;
import zaksim.dto.ZakSimMember;

@Controller
@RequestMapping(value="/zaksim/challenge")
public class DoChallenge {

	private static final Logger logger = LoggerFactory.getLogger(DoChallenge.class);
	
	@Autowired DoChallengeService dochalsv;
	
	// 도전하기 - view 띄우기
	@RequestMapping(value="/doChallenge", method=RequestMethod.GET)
	public void doChallengeGet(Model model,HttpSession session) {
		
		
		ZakSimMember user = new ZakSimMember();
	
		String id = (String) session.getAttribute("login_id");
		
		user.setId( id);
		
		// 유저 조회
		user=dochalsv.userInfo(user);
		
		
		
		model.addAttribute("user",user);
	
		
		logger.info("유저 모델 : "+model);
		
		
		
	}

	
	// 도전금 결제 - 도전정보 전달
	@RequestMapping(value="/priceChallenge", method=RequestMethod.GET)
	public String priceChallengeGet(Model model,Challenge chal) {
		
		
		logger.info("price Get 활성화");
		logger.info("도전정보 : "+chal);
		
		//form에서 입력받은 도전명,시작일,종료일 정보 전달
		model.addAttribute("info", chal);

		
		return "/zaksim/challenge/include/priceInclude";
	}
	
	
	
	// 도전 정보 DB 전송
	@RequestMapping(value="/priceChallenge", method=RequestMethod.POST)
	public String priceChallengePost(Model model,ZakSimMember member, Challenge chal, Payment pay) {
		
		logger.info("price POST 활성화");
		logger.info("도전 정보 : "+chal);
		logger.info("도전금 모델 : "+model);
		logger.info("결제정보 : "+pay );
		
		DoChallenge dc = new DoChallenge();
		
		
		/* 값 확인 > 서비스 전달 > challenge_seq.nextval 값 받기 > challenge 객체에 set idx > challenge 매개변수로 daoImpl 로 전달해서 insert
		 * 
		 * paymet 객체에 set challenge idx > Payment daoImpl로 전달해서 insert > 확인
		 * */
		
		
		
		// 도전금 정보 받기
		
		
		
		// 챌린지DB insert
				
		// paymentDB insert
		
		// 데이터 전달 (boolean=true 일때)
		return dc.endChallengeGet();
	}
	
//	
//	// 서약서 작성
//	@RequestMapping(value="/vowChallenge", method=RequestMethod.GET)
//	public String vowChallengeGet(Model model, Challenge chal, Payment pay) {
//		
//		
//		logger.info("도전금 결제 활성화");
//		logger.info("결제정보 : "+model);
//		
//	
//		
//		
//		return "/zaksim/challenge/include/vowInclude";
//				
//	}
//	
//	@RequestMapping(value="/vowChallenge", method=RequestMethod.POST)
//	public void vowChallengePost(Model model, Challenge chal, Payment pay) {
//		
//		
//		logger.info("도전금 결제 활성화");
//		logger.info("결제정보 : "+model);
//		
//	
//		
//				
//	}
//	
	
	// 도전 안내사항
	@RequestMapping(value="/endChallenge", method=RequestMethod.GET)
	public String endChallengeGet() {
		
		
		return "/zaksim/challenge/include/endInclude";
	}
	
	

	
}
