package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import biz.book.service.BookService;
import sun.print.resources.serviceui_es;

@Controller
public class MainController {
	@Autowired
	BookService service;
	
	@RequestMapping("/main/main.do")
	public ModelAndView hello() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("booklist", service.bookViewList());
		mav.setViewName("/main/main");
		return mav;
	}
	
	
	
	
}
