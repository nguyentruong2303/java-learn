package tp.kits3.livedinner.dao;

import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Repository;

import tp.kits3.livedinner.vo.Post;

@Repository
public class PostDao {
	private static SqlSessionFactory factory = null;
	public static SqlSessionFactory getInstance() {
		if(factory == null ) {
			try {
				Reader resource = Resources.getResourceAsReader("mybatis/mybatis-config.xml");
				factory = new SqlSessionFactoryBuilder().build(resource);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return factory;
	}
	
	public List<Post> selectAll() {
		SqlSession session = getInstance().openSession();
		session.commit();
		session.close();
		return session.selectList("mappers.postMapper.selectAll");
	}
	public Post selectOne(int id) {
		SqlSession session = getInstance().openSession();
		session.commit();
		session.close();
		return session.selectOne("mappers.postMapper.selectOne",id);
	}
	public void insert (Post param) {
		SqlSession session = getInstance().openSession();
		session.insert("mappers.postMapper.insert",param);
		session.commit();
		session.close();
	}
	public void update( Post param) {
		SqlSession session = getInstance().openSession();
		session.update("mappers.postMapper.update",param);
		session.commit();
		session.close();
	}
	public void delete(int id) {
		SqlSession session = getInstance().openSession();
		session.delete("mappers.postMapper.delete",id);
		session.commit();
		session.close();
	}
	
}
