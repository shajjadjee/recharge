package com.mrc.auth.service;

import java.util.Map;

import com.mrc.auth.model.User;



public interface UserService {
    void save(User user);
    User findByUsername(String username);
	User getCurrentUser();
	String getCurrentUsername();
	public Map<String, Double> getBlUsername(String username);
	public Double findBlUsername(String username);
}