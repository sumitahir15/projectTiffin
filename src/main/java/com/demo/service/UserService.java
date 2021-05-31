package com.demo.service;

import java.util.List;

import com.demo.model.User;

public interface UserService {

	List<User> getAllEmp();

	boolean validate(String email, String password);

	void save(User u);

	List<Integer> getRow();

	int deleteCustById(int cust_id);

	User getCustById(int custId);

	int updateCustById(User c);

	int getCustID(String cname);

}
