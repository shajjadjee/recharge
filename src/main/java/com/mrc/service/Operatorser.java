package com.mrc.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mrc.dao.IoperatorDao;
import com.mrc.model.Operator;


@Service
public class Operatorser implements Ioperatorser {
	@Autowired
	IoperatorDao operatorDao;

	@Override
	public Map<String, Object> getAll() {
		// TODO Auto-generated method stub
		return operatorDao.getAll();
	}

	@Override
	public Map<String, Object> getById(long id) {
		// TODO Auto-generated method stub
		return operatorDao.getById(id);
	}

	@Override
	public Map<String, Object> save(Operator entity) {
		// TODO Auto-generated method stub
		return operatorDao.save(entity);
	}

	@Override
	public Map<String, Object> update(Operator entity) {
		// TODO Auto-generated method stub
		return operatorDao.update(entity);
	}

	@Override
	public Map<String, Object> delete(long id) {
		// TODO Auto-generated method stub
		return operatorDao.delete(id);
	}

	@Override
	public Map<String, Object> getByCountry(String country) {
		// TODO Auto-generated method stub
		return operatorDao.getByCountry(country);
	}

}
