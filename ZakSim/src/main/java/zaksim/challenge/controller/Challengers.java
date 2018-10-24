package zaksim.challenge.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/zaksim/challenge")
public class Challengers {

	
	@RequestMapping(value="/challengers", method=RequestMethod.GET)
	public void challengersGet() {
		
	}
	
}
