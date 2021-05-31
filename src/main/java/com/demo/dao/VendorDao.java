package com.demo.dao;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.demo.model.Menu;
import com.demo.model.Vendor;

public interface VendorDao {

	/*
	 * List<Vendor> findAll();
	 * 
	 * boolean validate(String email, String password);
	 * 
	 * void save(Vendor v);
	 */
	List<Vendor> getAll();

	Vendor getById(int vendor_id);

	int updateById(Vendor v);

	int deleteById(int vendor_id);

	boolean save(Vendor v);

	int enableById(int vId);

	int disableById(int vId);

	int getByName(String vName);

	List<Integer> getVendor();

}
