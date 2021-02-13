package com.mrc.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mrc.dao.IComDao;
import com.mrc.model.Comment;

@Service
public class ComServiceImpl implements IComService {
	@Autowired
	IComDao comDao;

	@Override
	public Map<String, Object> getAll() {
		return comDao.getAll();
	}

	@Override
	public Map<String, Object> getByUsername(String username) {
		return comDao.getByUsername(username);
	}
	
//	@Override
//	public Map<String, Object> getBlUsername(String username) {
//		return comDao.getBlUsername(username);
//	}

	@Override
	public Map<String, Object> getById(long id) {
		return comDao.getById(id);
	}

	@Override
	public Map<String, Object> save(Comment entity) {
		return comDao.save(entity);
	}

	@Override
	public Map<String, Object> update(Comment entity) {
		return comDao.update(entity);
	}

	@Override
	public Map<String, Object> delete(long id) {
		return comDao.delete(id);
	}

}
