package com.mrc.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.HibernateError;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.mrc.model.Operator;

@Repository
@Transactional
public class OperatorDao implements IoperatorDao{
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public Map<String, Object> getAll() {
		Map<String, Object> map = new HashMap<>();
		try {			
			Session s = sessionFactory.openSession();
			List<Operator> operatorList = s.createQuery("FROM Operator").list();
			map.put("operatorList", operatorList);
			return map;
		} catch (Exception e) {			
			throw new HibernateError(e.getLocalizedMessage());
		}
	}

	@Override
	public Map<String, Object> getById(long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Map<String, Object> save(Operator entity) {
		Map<String, Object> map = new HashMap<>();
		try {
			Session s = sessionFactory.getCurrentSession();
			s.save(entity);
			map.put("status", "success");
			map.put("message", "saved successfully");
			return map;
		} catch (Exception e) {
			map.put("status", "error");
			map.put("message", "save failed!");
			return map;
		}
	}

	@Override
	public Map<String, Object> update(Operator entity) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Map<String, Object> delete(long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Map<String, Object> getByCountry(String country) {
		Map<String, Object> map = new HashMap<>();
		try {			
			Session s = sessionFactory.openSession();
			List<Operator> entityList = s.createQuery("FROM Operator where country=:country")
					.setParameter("country", country)
					.list();
			map.put("entityList", entityList);
			return map;
		} catch (Exception e) {			
			throw new HibernateError(e.getLocalizedMessage());
		}
	}
}
