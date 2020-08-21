package tp.kits3.livedinner.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tp.kits3.livedinner.dao.PostDao;
import tp.kits3.livedinner.vo.Post;

@Service
public class PostService {
@Autowired
private PostDao dao;
 	public List<Post> selectAll() {
 		return dao.selectAll();
 	}
 	public Post selectOne(int id) {
 		return dao.selectOne(id);
 	}
 	public void insert(Post param) {
 		dao.insert(param);
 	}
 	public void update(Post param) {
 		dao.update(param);
 	}
 	public void delete(int id) {
 		dao.delete(id);
 	}
}
