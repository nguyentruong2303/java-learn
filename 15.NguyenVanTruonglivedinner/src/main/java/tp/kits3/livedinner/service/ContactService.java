package tp.kits3.livedinner.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tp.kits3.livedinner.dao.ContactDao;
import tp.kits3.livedinner.vo.Contact;

@Service
public class ContactService {
	@Autowired
	private ContactDao dao;
	
	
	public List<Contact> selectAll() {
		return dao.selectAll();
	}
	public Contact selectOne(int id) {
		return dao.selectOne(id);
	}
	public void insert(Contact param) {
		dao.insert(param);
	}
	public void update(Contact param) {
		dao.update(param);
	}
	public void delete(int id) {
		dao.delete(id);
	}
}
