package com.mrc.auth.repository;

import java.util.List;

import com.mrc.auth.model.Role;

public interface IRoleDao {

	List<Role> findAll();
}
