package tp.kits3.livedinner.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tp.kits3.livedinner.dao.CategoryDao;
import tp.kits3.livedinner.vo.Category;

@Service
public class CategoryService {
	@Autowired
	private CategoryDao dao;
	public List<Category> selectAll() {
		return dao.selectAll();
	}
	public Category selectOne(int id) {
		return dao.selectOne(id);
	}
	public void insert(Category param) {
		dao.insert(param);
	}
	public void update(Category param) {
		dao.update(param);
	}
	public void delete(int id) {
		dao.delete(id);
	}
}
