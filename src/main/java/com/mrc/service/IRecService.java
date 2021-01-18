package com.mrc.service;

import java.util.Map;

import com.mrc.model.Recharge;



public interface IRecService {
	public Map<String, Object> getAll();
	public Map<String, Object> getById(long id);
	public Map<String, Object> save(Recharge entity);
//	public Map<String, Object> update(Recharge entity);
//	public Map<String, Object> delete(long id);
	public Map<String, Object> getByUsername(String username);
//	public Map<String, Object> getBlUsername(String username);
}
