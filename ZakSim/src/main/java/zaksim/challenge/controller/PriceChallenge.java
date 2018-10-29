package zaksim.challenge.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/zaksim/challenge")
public class PriceChallenge {

	private static final Logger logger = LoggerFactory.getLogger(PriceChallenge.class);
	
	@RequestMapping(value="/priceChallenge", method=RequestMethod.GET)
	public void PriceChallengeGet() {
		
	}
	
	@RequestMapping(value="/priceChallenge", method=RequestMethod.POST)
	public String PriceChallengePost() {
		
	logger.info("price POST 활성화");	
		
		return "redirect:/zaksim/challenge/vowChallenge";
	}
	
}
