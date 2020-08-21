package tp.kits3.livedinner.dao;

import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Repository;

import tp.kits3.livedinner.vo.Menu;

@Repository
public class MenuDao {
	private static SqlSessionFactory factory = null;
	public static SqlSessionFactory getInstance() {
		if (factory == null) {
			try {
				Reader resource = Resources.getResourceAsReader("mybatis/mybatis-config.xml");
				factory = new SqlSessionFactoryBuilder().build(resource);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return factory;
	}
	
	public List<Menu> selectAll() {
		SqlSession session = getInstance().openSession();
		List<Menu> list = session.selectList("mappers.menuMapper.selectAll");
		session.commit();
		session.close();
		return list;
	}
	public Menu selectOne(int id) {
		SqlSession session = getInstance().openSession();
		session.commit();
		session.close();
		return session.selectOne("mappers.menuMapper.selectOne",id);
	}
	public void insert(Menu param)  {
		SqlSession session = getInstance().openSession();
		session.insert("mappers.menuMapper.insert",param);
		session.commit();
		session.close();
	}
	public void update(Menu param) {
		SqlSession session = getInstance().openSession();
		session.update("mappers.menuMapper.update",param);
		session.commit();
		session.close();
	}
	public void delete(int id) {
		SqlSession session = getInstance().openSession();
		session.delete("mappers.menuMapper.delete",id);
		session.commit();
		session.close();
	}
}
