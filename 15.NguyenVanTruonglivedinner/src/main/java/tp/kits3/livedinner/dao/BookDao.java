package tp.kits3.livedinner.dao;

import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Repository;

import tp.kits3.livedinner.vo.Book;

@Repository
public class BookDao {
	private static SqlSessionFactory factory = null;
	public static SqlSessionFactory getInstance() {
		if (factory == null ) {
			try {
				Reader resource = Resources.getResourceAsReader("mybatis/mybatis-config.xml");
				factory = new SqlSessionFactoryBuilder().build(resource);
				resource.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return factory;
	}
	
	public List<Book> selectAll() {
		SqlSession session = getInstance().openSession();

		List<Book> list =  session.selectList("mappers.bookMapper.selectAll");
		session.commit();
		session.close();
		return list;
	}
	public Book selectOne(int id) {
		SqlSession session = getInstance().openSession();
		session.commit();
		session.close();
		return session.selectOne("mappers.bookMapper.selectOne",id);
	}
	public void insert(Book param) {
		SqlSession session = getInstance().openSession();
		session.insert("mappers.bookMapper.insert",param);
		session.commit();
		session.close();
	}
	public void update(Book param ) {
		SqlSession session = getInstance().openSession();
		session.update("mappers.bookMapper.update",param);
		session.commit();
		session.close();
	}
	public void delete(int id) {
		SqlSession session = getInstance().openSession();
		session.delete("mappers.bookMapper.delete",id);
		session.commit();
		session.close();
	}
}
