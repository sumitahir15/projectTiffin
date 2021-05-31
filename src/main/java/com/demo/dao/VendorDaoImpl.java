package com.demo.dao;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;

import com.demo.model.Vendor;


@Repository
public class VendorDaoImpl implements VendorDao {


	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	
	@Autowired
	 private BCryptPasswordEncoder bCryptPasswordEncoder;
	private class VendorRowMapper implements RowMapper<Vendor> {
		
		public Vendor mapRow(ResultSet rs, int rowNum) throws SQLException {
			Vendor v = new Vendor();
			v.setId(rs.getInt(1));
			v.setName(rs.getString(2));
			v.setMobile(rs.getString(3));
			v.setAddress(rs.getString(4));
			v.setEmail(rs.getString(5));
			v.setUsername(rs.getString(6));
			return v;
		}

	}
	@Override
	public boolean save(Vendor v) {
		String sql = "insert into Vendor values(?,?,?,?,?,?)";
		String encodedPassword =bCryptPasswordEncoder.encode(v.getPassword());
		String users="insert into users (customerId,enabled,password,username) values(?,?,?,?)";
		jdbcTemplate.update(users,new Object[] {v.getId(),0,encodedPassword,v.getUsername()});
		jdbcTemplate.update("insert into authorities (authorityType,username)values(?,?)",new Object[] {"ROLE_VENDOR",v.getUsername()});
		
		int x=jdbcTemplate.update(sql, new Object[] {v.getId(),v.getName(),v.getMobile(),v.getAddress(),v.getEmail(),v.getUsername() });
		if(x>0) {
			return true;
		}
		else {
		return false;
	}
		}

	@Override
	public List<Vendor> getAll() {
		String sql="select * from Vendor";
		List<Vendor> mlist=jdbcTemplate.query(sql,new VendorRowMapper());
	//	jdbcTemplate.query(sql,new VendorRowMapper());
	
		return mlist;
	}

	@Override
	public Vendor getById(int vendor_id) {
		String sql="select * from Vendor where Vendor_id=?";
	
		return (Vendor)jdbcTemplate.queryForObject(sql,new Object[] {vendor_id},new VendorRowMapper());
		
	}

	@Override
	public int updateById(Vendor v) {
		String sql="update Vendor set vendor_name=?,contact_no=?,address=?,email=? where Vendor_id=?";
		return jdbcTemplate.update(sql,new Object[] {v.getName(),v.getMobile(),v.getAddress(),v.getEmail(),v.getId()});

	}

	@Override
	public int deleteById(int vendor_id) {
		String sql="delete from Vendor where Vendor_id=?";
		return jdbcTemplate.update(sql,new Object[] {vendor_id});
	}

	@Override
	public int enableById(int vId) {
		Vendor v=getById(vId);
		String sql="update users set enabled=? where username=?";
		return jdbcTemplate.update(sql,new Object[] {1,v.getUsername()});
	}

	@Override
	public int disableById(int vId) {
		Vendor v=getById(vId);
		String sql="update users set enabled=? where username=?";
		return jdbcTemplate.update(sql,new Object[] {0,v.getUsername()});
	}
	
	@Override
	public int getByName(String vName) {
		String vid="select * from vendor where  username=?";
		
		Vendor v=jdbcTemplate.queryForObject(vid,new Object[] {vName},new VendorRowMapper());
		
		return v.getId();
	}

	@Override
	public List<Integer> getVendor() {
		List<Integer> vlist =new ArrayList<Integer>();
		vlist=jdbcTemplate.queryForList("select vendor_id from vendor",Integer.class);
		return vlist;
	}
	
}
