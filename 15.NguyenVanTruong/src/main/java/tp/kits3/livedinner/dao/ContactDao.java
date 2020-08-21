package tp.kits3.livedinner.dao;

import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Repository;

import tp.kits3.livedinner.vo.Contact;

@Repository
public class ContactDao {
	private static SqlSessionFactory factory = null;
	public static SqlSessionFactory getInstance() {
		if( factory == null ) {
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
	
	public List<Contact> selectAll(){
		SqlSession session = getInstance().openSession();
		List<Contact> list= session.selectList("mappers.contactMapper.selectAll");
		session.commit();
		session.close();
		return list;
	}
	public Contact selectOne(int id) {
		SqlSession session = getInstance().openSession();
		Contact contact = session.selectOne("mappers.contactMapper.selectOne",id);
		session.commit();
		session.close();
		return contact;
	}
	public void insert(Contact param) {
		SqlSession session = getInstance().openSession();
		session.insert("mappers.contactMapper.insert",param);
		session.commit();
		session.close();
	}
	public void update(Contact param) {
		SqlSession session = getInstance().openSession();
		session.update("mappers.contactMapper.update",param);
		session.commit();
		session.close();
	}
	public void delete(int id) {
		SqlSession session = getInstance().openSession();
		session.delete("mappers.contactMapper.delete",id);
		session.commit();
		session.close();
	}
}
