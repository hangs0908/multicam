package controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import biz.board.service.BoardService;
import biz.board.vo.BoardVO;

@Controller
public class BoardController {
	
	@Autowired
	BoardService service;
	
	@RequestMapping(value = "/viewboard.do", method = RequestMethod.GET)
	public String viewboard(@RequestParam("boardno") int boardno,
						HttpServletRequest req) {
		BoardVO vo = service.getBoard(boardno);
		List<BoardVO> list = new ArrayList();
		list.add(vo);
		req.setAttribute("boardlist", list);
		req.setAttribute("board", vo);
		return "book/review_read";
	}
	
	@RequestMapping(value = "/writeboard.do", method = RequestMethod.GET)
	public String writeboard() {
		return "book/review_write";
	}
	
	@RequestMapping(value = "/writeboard.do", method = RequestMethod.POST)
	public String writeboardProc(@RequestParam("title") String title, 
			@RequestParam("content") String content, HttpServletRequest req,
			@RequestParam(value = "boardno", required = false, defaultValue="0") int boardno) throws Exception {
		BoardVO vo = new BoardVO();
		if(boardno==0) {
			HttpSession session = req.getSession();
			String writer = (String)session.getAttribute("id");
			vo.setWriter(writer);
			vo.setContent(content);
			vo.setTitle(title);
			service.addBoard(vo);
		}
		else {
			vo.setBoardno(boardno);
			vo.setContent(content);
			vo.setTitle(title);
			System.out.println(vo);
			service.updateBoard(vo);
		}
		return "redirect:/boardlist.do";
	}
	
	@RequestMapping(value = "/boardlist.do", method = RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("boardlist",service.getBoardList());
		mav.setViewName("book/review");
		return mav;
	}
	
	@RequestMapping(value = "/changeboard.do", method = RequestMethod.GET)
	public String changeboard(@RequestParam("boardno") int boardno,
		HttpServletRequest req) {
		BoardVO vo =service.getBoard(boardno);
		req.setAttribute("board", vo);
		return "book/review_write";
	}
	@RequestMapping(value = "/deleteboard.do", method = RequestMethod.GET)
	public String deleteboard(@RequestParam("boardno") int boardno) {
		service.removeBoard(boardno);
		return "redirect:/boardlist.do";
	}
}
