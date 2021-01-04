package com.mrc.dao;

import java.util.Map;

import com.mrc.model.Operator;

public interface IoperatorDao {
	public Map<String, Object> getAll();
	public Map<String, Object> getById(long id);
	public Map<String, Object> save(Operator entity);
	public Map<String, Object> update(Operator entity);
	public Map<String, Object> delete(long id);
	public Map<String, Object> getByCountry(String country);
}
