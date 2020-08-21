package tp.kits3.livedinner.dao;

import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Repository;

import tp.kits3.livedinner.vo.Tag;

@Repository
public class TagDao {
	private static SqlSessionFactory factory = null;
	
	public static SqlSessionFactory getInstance() {
		if(factory == null) {
			try {
				Reader resource = Resources.getResourceAsReader("mybatis/mybatis-config.xml");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return factory;
	}
	
	public List<Tag> selectAll() {
		SqlSession session = getInstance().openSession();
		session.commit();
		session.close();
		return session.selectList("mappers.tagMapper.selectAll");
	}
	public Tag selectOne(int id) {
		SqlSession session = getInstance().openSession();
		session.commit();
		session.close();
		return session.selectOne("mappers.tagMapper.selectOne",id);
	}
	public void insert(Tag param) {
		SqlSession session = getInstance().openSession();
		session.insert("mappers.tagMapper.insert",param);
		session.commit();
		session.close();
	}
	public void update(Tag param) {
		SqlSession session = getInstance().openSession();
		session.update("mappers.tagMapper.update",param);
		session.commit();
		session.close();
	}
	public void delete(int id) {
		SqlSession session = getInstance().openSession();
		session.delete("mappers.tagMapper.delete",id);
		session.commit();
		session.close();
	}
}
