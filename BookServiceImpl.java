package biz.book.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import biz.book.dao.BookDAO;
import biz.book.vo.BookVO;

@Service("bookservice")
public class BookServiceImpl implements BookService{

	@Autowired
	BookDAO dao;

	@Override
	public BookVO getBook(String title) {
		return dao.getBook(title);
	}

	@Override
	public List<BookVO> getBookList(String title) {
		return dao.getBookList(title);
	}
	@Override
	public List<BookVO> getBookList2(String author) {
		return dao.getBookList2(author);
	}
	
	@Override
	public List<BookVO> getBookList3(String publisher) {
		return dao.getBookList3(publisher);
	}

	@Override
	public List<BookVO> bookViewList() {
		return dao.bookViewList();
	}
	
	
	
}
