package tp.kits3.livedinner.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tp.kits3.livedinner.dao.TagDao;
import tp.kits3.livedinner.vo.Tag;

@Service
public class TagService {
@Autowired
	private TagDao dao;
	public List<Tag> selectAll() {
		return dao.selectAll();
	}
	public Tag selectOne(int id) {
		return dao.selectOne(id);
	}
	public void insert(Tag param) {
		dao.insert(param);
	}
	public void update(Tag param) {
		dao.update(param);
	}
	public void delete(int id) {
		dao.delete(id);
	}
}
