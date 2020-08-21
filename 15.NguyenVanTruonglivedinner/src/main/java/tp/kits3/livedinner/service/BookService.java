package tp.kits3.livedinner.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tp.kits3.livedinner.dao.BookDao;
import tp.kits3.livedinner.vo.Book;

@Service
public class BookService {
	@Autowired
	private BookDao dao;
	public List<Book> selectAll(){
		return dao.selectAll();
	}
	public Book selectOne(int id) {
		return dao.selectOne(id);
	}
	public void insert(Book param) {
		dao.insert(param);
	}
	public void update(Book param) {
		dao.update(param);
	}
	public void delete(int id) {
		dao.delete(id);
	}
}
