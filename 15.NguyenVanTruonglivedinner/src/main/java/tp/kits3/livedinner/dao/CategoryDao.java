package tp.kits3.livedinner.dao;

import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Repository;

import tp.kits3.livedinner.vo.Category;

@Repository
public class CategoryDao {
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
	public List<Category> selectAll(){
		SqlSession session = getInstance().openSession();
		session.commit();
		session.close();
		return session.selectList("mappers.categoryMapper.selectAll");
	}
	public Category selectOne(int id) {
		SqlSession session = getInstance().openSession();
		session.commit();
		session.close();
		return session.selectOne("mappers.categoryMapper.selectOne",id);
	}
	public void insert(Category param) {
		SqlSession session = getInstance().openSession();
		session.insert("mappers.categoryMapper.insert",param);
		session.commit();
		session.close();
	}
	public void update(Category param) {
		SqlSession session = getInstance().openSession();
		session.update("mappers.categoryMapper.update",param);
		session.commit();
		session.close();
	}
	public void delete(int id) {
		SqlSession session = getInstance().openSession();
		session.delete("mappers.categoryMapper.delete",id);
		session.commit();
		session.close();
	}
}
