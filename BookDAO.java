package biz.book.dao;

import java.util.List;

import biz.book.vo.BookVO;

public interface BookDAO {
		BookVO getBook (int bookKey);
	   List<BookVO> getBookList(String libName, String title);
	   List<BookVO> getBookList2(String libName, String author);
	   List<BookVO> getBookList3(String libName, String publisher);
	   List<BookVO> bookViewList();
}
