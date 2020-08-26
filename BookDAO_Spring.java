package biz.book.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;


import biz.book.vo.BookVO;

@Component("bookspring")
public class BookDAO_Spring implements BookDAO{
	
	@Autowired
	JdbcTemplate template;

	@Override
	public BookVO getBook(String title) {
		String sql2 = "update book set viewcount=(select viewcount+1 from book where title="+title
		 		+ ") where title="+title;
		template.update(sql2);
		
		String sql = "select * from book where title = ?";
		BookVO vo = null;
		 vo = template.queryForObject(sql, 
                                     new Object[] {title} ,
                                     new BookRawMapper());
		
		 return vo;
	}

	@Override
	public List<BookVO> getBookList(String title) {
		System.out.println("SpringDAO...");
		String sql = "select * from book where title = ?";
		List<BookVO> list = template.query(sql, new Object[] {title}, new BookRawMapper());
		return list;
		
	}

	@Override
	public List<BookVO> getBookList2(String author) {
		System.out.println("SpringDAO...");
		String sql = "select * from book where author = ?";
		List<BookVO> list = template.query(sql, new Object[] {author}, new BookRawMapper());
		return list;
	}
	
	@Override
	public List<BookVO> getBookList3(String publisher) {
		System.out.println("SpringDAO...");
		String sql = "select * from book where publisher = ?";
		List<BookVO> list = template.query(sql, new Object[] {publisher}, new BookRawMapper());
		return list;
	}

	@Override
	public List<BookVO> bookViewList() {
		System.out.println("SpringDAO...");
		String sql = "select * from (select * from book order by viewcount desc) where rownum <= 3";
		String sql2 = "select * from book";
		List<BookVO> list = template.query(sql, new BookRawMapper());
		List<BookVO> list2 = template.query(sql2, new BookRawMapper());
		System.out.println("list " + list);
		System.out.println("list2 " + list2);
		return list;
		
	}
	
}



class BookRawMapper implements RowMapper<BookVO>{
	@Override
	public BookVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		BookVO vo = new BookVO();
		vo.setBookKey(rs.getInt("bookKey"));
		vo.setLibName(rs.getString("libName"));
		vo.setManageCode(rs.getString("manageCode"));
		vo.setTitle(rs.getString("title"));
		vo.setAuthor(rs.getString("author"));
		vo.setPublisher(rs.getString("publisher"));
		vo.setPubYear(rs.getString("pubYear"));
		vo.setViewcount(rs.getInt("viewcount"));
		return vo;
	}
}
