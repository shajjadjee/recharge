package com.mrc.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.hibernate.HibernateError;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mrc.model.Wallet;





@Repository
@Transactional
public class WalDaoImpl implements IWalDao{
	
	
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public Map<String, Object> getAll() {
		Map<String, Object> map = new HashMap<>();
		try {			
			Session s = sessionFactory.openSession();
			List<Wallet> entityList = s.createQuery("FROM Wallet").list();
			map.put("entityList", entityList);
			return map;
		} catch (Exception e) {			
			throw new HibernateError(e.getLocalizedMessage());
		}
	}
	
	@Override
	public Map<String, Object> getByUsername(String username) {
		Map<String, Object> map = new HashMap<>();
		try {			
			Session s = sessionFactory.openSession();
			List<Wallet> entityList = s.createQuery("FROM Wallet where username=:username")
					.setParameter("username", username)
					.list();
			map.put("entityList", entityList);
			List<Double> entityLista = s.createQuery("select balance FROM Wallet where username=:username ORDER BY ID DESC")
					.setParameter("username", username)
					.list();
			if (entityLista.size() > 0) {
				Double ublnc = entityLista.get(0);
				map.put("blnc", ublnc);
			} else {
				map.put("blnc", 0.0);
			}
			return map;
		} catch (Exception e) {			
			throw new HibernateError(e.getLocalizedMessage());
		}
	}

	@Override
	public Map<String, Object> getById(long id) {
		Map<String, Object> map = new HashMap<>();
		try {
			Session s = sessionFactory.getCurrentSession();
			Wallet entity = s.get(Wallet.class, id);
			map.put("entity", entity);
			return map;
		} catch (Exception e) {
			throw new HibernateError(e.getLocalizedMessage());
		}
	}

	@Override
	public Map<String, Object> save(Wallet entity) {
		Map<String, Object> map = new HashMap<>();
		try {
			Session s = sessionFactory.getCurrentSession();
			s.save(entity);
			map.put("status", "success");
			map.put("message", "saved successfully");
			return map;
		} catch (Exception e) {
			map.put("status", "error");
			map.put("message", e.getLocalizedMessage());
			return map;
		}
	}

	@Override
	public Map<String, Object> update(Wallet entity) {
		Map<String, Object> map = new HashMap<>();
		try {
			Session s = sessionFactory.getCurrentSession();
			s.update(entity);
			map.put("status", "success");
			map.put("entity", entity);
			map.put("message", "updated successfully");
			return map;
		} catch (Exception e) {
			map.put("status", "error");
			map.put("message", "update failed!");
			return map;
		}
	}

	@Override
	public Map<String, Object> delete(long id) {
		Map<String, Object> map = new HashMap<>();
		try {
			Session s = sessionFactory.getCurrentSession();
			Wallet entity = s.get(Wallet.class, id);
			s.delete(entity);
			map.put("status", "success");
			return map;
		} catch (Exception e) {
			throw new HibernateError(e.getLocalizedMessage());
		}
	}

	@Override
	public Map<String, Object> rechrage(Wallet entity) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public Double findBlUsername(String username) {
		try {
			Session s = sessionFactory.getCurrentSession();
//			Double entity = (Double) s.createQuery("select balance FROM Wallet where accountof=:username ORDER BY ID DESC").setParameter("username", username).list();
//			
//			return entity;
			List<Double> entityLista = s.createQuery("select balance FROM Wallet where username=:username ORDER BY ID DESC")
					.setParameter("username", username)
					.list();
			if (entityLista.size() > 0) {
				Double blnc = entityLista.get(0);
				return blnc;
			} else {
				return 0.0;
			}
		} catch (Exception e) {
			return null;
		}
	}

}
