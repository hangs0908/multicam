package controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import biz.book.dao.BookDAO;
import biz.book.service.BookService;

@Controller
public class BookController {
	
	@Autowired
	BookService service;
	@RequestMapping("/board.do")
	public String board(HttpServletRequest request) {
		String lib = request.getParameter("searchOption1");
		String ti = request.getParameter("searchOption2");
		String text = request.getParameter("search");
		if(ti == "publisher") {
			request.setAttribute("booklist", service.getBookList3(lib, text)); 
		} else if(ti == "author") {
			request.setAttribute("booklist",service.getBookList2(lib, text));
		} else {
			request.setAttribute("booklist",service.getBookList(lib, text));
		} 
		return "/book/book_list";
	}
	
	@RequestMapping(value = "/book.do", method = RequestMethod.GET)
	public ModelAndView book(int bookKey) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("book", service.getBook(bookKey));
		mav.setViewName("/book/book_view");
		return mav;
	}
}
