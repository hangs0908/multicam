package biz.book.service;

import java.util.List;

import biz.book.vo.BookVO;

public interface BookService {
	BookVO getBook(int bookKey);

	List<BookVO> getBookList(String libName, String title);

	List<BookVO> getBookList2(String libName, String author);

	List<BookVO> getBookList3(String libName, String publisher);

	List<BookVO> bookViewList();
}
