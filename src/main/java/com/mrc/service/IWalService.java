package com.mrc.service;

import java.util.Map;

import com.mrc.model.Wallet;





public interface IWalService {
	public Map<String, Object> getAll();
	public Map<String, Object> getById(long id);
	public Map<String, Object> save(Wallet entity);
	public Map<String, Object> update(Wallet entity);
	public Map<String, Object> rechrage(Wallet entity);
	public Map<String, Object> delete(long id);
	public Map<String, Object> getByUsername(String username);
	public Double findBlUsername(String username);
	
}
