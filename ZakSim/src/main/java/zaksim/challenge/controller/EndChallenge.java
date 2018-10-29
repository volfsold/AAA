package zaksim.challenge.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/zaksim/challenge")
public class EndChallenge {

	
	@RequestMapping(value="/endChallenge", method=RequestMethod.GET)
	public void EndChallengeGet() {
		
	}
	
}
