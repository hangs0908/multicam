package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloController {
	
	@RequestMapping("/main/main.do")
	public ModelAndView hello() {
		ModelAndView mav = new ModelAndView();
		
		//mav.addObject("msg","Hello Spring MVC");
		mav.setViewName("/main/main");
		
		return mav;
	}
	
	
	
	
}
