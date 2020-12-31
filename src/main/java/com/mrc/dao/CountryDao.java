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

import com.mrc.model.Country;

@Repository
@Transactional
public class CountryDao implements Icountrydao {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public Map<String, Object> getAll() {
		Map<String, Object> map = new HashMap<>();
		try {
			Session s = sessionFactory.openSession();
			List<Country> entityList = s.createQuery("FROM Country").list();
			map.put("countryList", entityList);
			return map;
		} catch (Exception e) {
			throw new HibernateError(e.getLocalizedMessage());
		}
	}

}
