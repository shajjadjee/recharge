package com.mrc.dao;

import java.util.Map;

import com.mrc.model.Comment;

public interface IComDao {

	public Map<String, Object> getAll();
	public Map<String, Object> getById(long id);
	public Map<String, Object> save(Comment entity);
	public Map<String, Object> update(Comment entity);
	public Map<String, Object> delete(long id);
	public Map<String, Object> getByUsername(String username);
//	public Map<String, Object> getBlUsername(String username);
}
