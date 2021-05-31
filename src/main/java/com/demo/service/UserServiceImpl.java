package com.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.UserDao;
import com.demo.model.User;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	UserDao userdao;

	@Override
	public List<User> getAllEmp() {
		
		return userdao.findAll();
	}

	@Override
	public boolean validate(String email, String password) {
		// TODO Auto-generated method stub
		return userdao.validate(email,password);
	}

	@Override
	public void save(User u) {
		// TODO Auto-generated method stub
		userdao.save(u);
	}

	@Override
	public List<Integer> getRow() {
		// TODO Auto-generated method stub
		return userdao.getRow();
	}

	@Override
	public int deleteCustById(int cust_id) {
		return userdao.deleteById(cust_id);
		
	}

	@Override
	public User getCustById(int custId) {
		// TODO Auto-generated method stub
		return userdao.getById(custId);
	}

	@Override
	public int updateCustById(User c) {
		// TODO Auto-generated method stub
		return userdao.updateCust(c);
	}

	@Override
	public int getCustID(String cname) {
		// TODO Auto-generated method stub
		return userdao.getCustId(cname);
	}
}
