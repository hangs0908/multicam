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
	public BookVO getBook(int bookKey) {
		return dao.getBook(bookKey);
	}

	@Override
	public List<BookVO> getBookList(String libName, String title) {
		return dao.getBookList(libName, title);
	}
	@Override
	public List<BookVO> getBookList2(String libName, String author) {
		return dao.getBookList2(libName, author);
	}
	
	@Override
	public List<BookVO> getBookList3(String libName, String publisher) {
		return dao.getBookList3(libName, publisher);
	}

	@Override
	public List<BookVO> bookViewList() {
		return dao.bookViewList();
	}
	
	
	
}
