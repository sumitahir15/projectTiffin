package com.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.demo.model.User;


public interface UserDao {

	List<User> findAll();

	boolean validate(String email, String password);

	void save(User u);

	List<Integer> getRow();

	int deleteById(int cust_id);

	User getById(int custId);

	int updateCust(User c);

	int getCustId(String cname);

}
