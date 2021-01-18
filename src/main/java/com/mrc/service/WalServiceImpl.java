package com.mrc.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mrc.dao.IWalDao;
import com.mrc.model.Wallet;



@Service
public class WalServiceImpl implements IWalService {
	@Autowired
	IWalDao walDao;

	@Override
	public Map<String, Object> getAll() {
		return walDao.getAll();
	}

	@Override
	public Map<String, Object> getByUsername(String username) {
		return walDao.getByUsername(username);
	}

	@Override
	public Map<String, Object> getById(long id) {
		return walDao.getById(id);
	}

	@Override
	public Map<String, Object> save(Wallet entity) {
		return walDao.save(entity);
	}

	@Override
	public Map<String, Object> update(Wallet entity) {
		return walDao.update(entity);
	}

	@Override
	public Map<String, Object> delete(long id) {
		return walDao.delete(id);
	}


	@Override
	public Map<String, Object> rechrage(Wallet entity) {
		// TODO Auto-generated method stub
		return walDao.rechrage(entity);
	}

	@Override
	public Double findBlUsername(String username) {
		// TODO Auto-generated method stub
		return walDao.findBlUsername(username);
	}

}
