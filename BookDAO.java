package biz.book.dao;

import java.util.List;

import biz.book.vo.BookVO;

public interface BookDAO {
		BookVO getBook (String title);
	   List<BookVO> getBookList(String title);
	   List<BookVO> getBookList2(String author);
	   List<BookVO> getBookList3(String publisher);
	   List<BookVO> bookViewList();
}
