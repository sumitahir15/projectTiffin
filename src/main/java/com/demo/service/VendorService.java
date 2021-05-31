package com.demo.service;

import java.util.List;

import com.demo.model.Vendor;


public interface VendorService {

	/*
	 * List<Vendor> getAllEmp();
	 * 
	 * boolean validate(String email, String password);
	 * 
	 * void save(Vendor v);
	 */

	List<Vendor> getAllVendor();

	Vendor getVendorById(int vendor_id);

	int updateVendorById(Vendor v);

	int deleteVendorById(int vendor_id);

	boolean save(Vendor v);

	int enableVendorById(int vId);

	int disableVendorById(int vId);

	int getVendorId(String vName);

	List<Integer> getVendor();
}
