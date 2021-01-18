package com.mrc.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mrc.dao.IRecDao;
import com.mrc.model.Recharge;

@Service
public class RecServiceImpl implements IRecService {
	@Autowired
	IRecDao recDao;

	@Override
	public Map<String, Object> getAll() {
		return recDao.getAll();
	}

	@Override
	public Map<String, Object> getByUsername(String username) {
		return recDao.getByUsername(username);
	}
	
//	@Override
//	public Map<String, Object> getBlUsername(String username) {
//		return recDao.getBlUsername(username);
//	}

	@Override
	public Map<String, Object> getById(long id) {
		return recDao.getById(id);
	}

	@Override
	public Map<String, Object> save(Recharge entity) {
		return recDao.save(entity);
	}

//	@Override
//	public Map<String, Object> update(Recharge entity) {
//		return recDao.update(entity);
//	}
//
//	@Override
//	public Map<String, Object> delete(long id) {
//		return recDao.delete(id);
//	}

}
