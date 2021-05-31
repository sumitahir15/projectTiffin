package com.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.demo.dao.VendorDao;
import com.demo.dao.VendorDao;
import com.demo.model.Vendor;
import com.demo.model.Vendor;

@Service
public class VendorServiceImpl implements VendorService{

	@Autowired
	VendorDao vendorDao;

	
	@Override
	public boolean save(Vendor m) {
		
		return vendorDao.save(m);
		
	}
	@Override
	public List<Vendor> getAllVendor() {
		
		return vendorDao.getAll();
	}
	@Override
	public Vendor getVendorById(int vendor_id) {
		// TODO Auto-generated method stub
		return vendorDao.getById(vendor_id);
	}
	@Override
	public int updateVendorById(Vendor v) {
		// TODO Auto-generated method stub
		return vendorDao.updateById(v);
	}
	@Override
	public int deleteVendorById(int vendor_id) {
		// TODO Auto-generated method stub
		return vendorDao.deleteById(vendor_id);
	}
	@Override
	public int enableVendorById(int vId) {
		// TODO Auto-generated method stub
		return vendorDao.enableById(vId);
	}
	@Override
	public int disableVendorById(int vId) {
		// TODO Auto-generated method stub
		return vendorDao.disableById(vId);
	}
	@Override
	public int getVendorId(String vName) {
		// TODO Auto-generated method stub
		return vendorDao.getByName(vName);
	}
	@Override
	public List<Integer> getVendor() {
		// TODO Auto-generated method stub
		return vendorDao.getVendor();
	}

}
