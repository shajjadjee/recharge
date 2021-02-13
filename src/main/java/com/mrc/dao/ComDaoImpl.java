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

import com.mrc.model.Comment;




@Repository
@Transactional
public class ComDaoImpl implements IComDao{
	
	
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public Map<String, Object> getAll() {
		Map<String, Object> map = new HashMap<>();
		try {			
			Session s = sessionFactory.openSession();
			List<Comment> entityList = s.createQuery("FROM Comment").list();
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
			List<Comment> entityList = s.createQuery("FROM Comment where username=:username")
					.setParameter("username", username)
					.list();
			map.put("entityList", entityList);
			List<Double> entityLista = s.createQuery("select balance FROM Wallet where username=:username ORDER BY ID DESC")
					.setParameter("username", username)
					.list();
			if (entityLista.size() > 0) {
				Double balance = entityLista.get(0);
				map.put("blnc", balance);
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
			Comment entity = s.get(Comment.class, id);
			map.put("entity", entity);
			return map;
		} catch (Exception e) {
			throw new HibernateError(e.getLocalizedMessage());
		}
	}

	@Override
	public Map<String, Object> save(Comment entity) {
		Map<String, Object> map = new HashMap<>();
		try {
			Session s = sessionFactory.getCurrentSession();
			s.save(entity);
			map.put("status", "success");
			map.put("message", "Comment Added ");
			return map;
		} catch (Exception e) {
			map.put("status", "error");
			map.put("message", "Comment failed");
			return map;
		}
	}

	@Override
	public Map<String, Object> update(Comment entity) {
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
			Comment entity = s.get(Comment.class, id);
			s.delete(entity);
			map.put("status", "success");
			return map;
		} catch (Exception e) {
			throw new HibernateError(e.getLocalizedMessage());
		}
	}

//	@Override
//	public Map<String, Object> getBlUsername(String username) {
//		Map<String, Object> map = new HashMap<>();
//		try {
//			Session s = sessionFactory.getCurrentSession();
//			Object entity = s.createQuery("select balance FROM Wallet where username=:username").setParameter("username", username).uniqueResult();
//			map.put("entity", entity);
//			return map;
//		} catch (Exception e) {
//			throw new HibernateError(e.getLocalizedMessage());
//		}
//	}

}
