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


import com.demo.model.User;
import com.demo.model.Vendor;

@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;

	private class UserRowMapper implements RowMapper<User> {

		public User mapRow(ResultSet rs, int rowNum) throws SQLException {
			User p = new User();
			p.setId(rs.getInt(1));
			p.setFname(rs.getString(2));
			p.setLname(rs.getString(3));
			p.setAddress(rs.getString(4));
			p.setMobile(rs.getString(5));
			p.setEmail(rs.getString(6));
			p.setUsername(rs.getString(7));
			return p;
		}

	}

	@Override
	public List<User> findAll() {

		List<User> clist = jdbcTemplate.query("select * from customer", new UserRowMapper());
		return clist;
	}



	@Override
	public void save(User u) {
		String sql = "insert into customer values(?,?,?,?,?,?,?)";
		String encodedPassword = bCryptPasswordEncoder.encode(u.getPassword());
		String users = "insert into users (customerId,enabled,password,username) values(?,?,?,?)";
		jdbcTemplate.update(users, new Object[] { u.getId(), 1, encodedPassword, u.getUsername() });
		jdbcTemplate.update("insert into authorities (authorityType,username)values(?,?)",
				new Object[] { "ROLE_USER", u.getUsername() });
		jdbcTemplate.update(sql, new Object[] { u.getId(), u.getFname(), u.getLname(), u.getAddress(), u.getEmail(),
				u.getMobile(), u.getUsername() });
		

	}

	@Override
	public List<Integer> getRow() {

		List<Integer> rlist = new ArrayList<Integer>();
		int c = jdbcTemplate.queryForObject("select count(*) from customer", Integer.class);

		int o = jdbcTemplate.queryForObject("select count(*) from orders", Integer.class);

		int v = jdbcTemplate.queryForObject("select count(*) from vendor", Integer.class);

		int m = jdbcTemplate.queryForObject("select count(*) from menu", Integer.class);

		rlist.add(c);
		rlist.add(o);
		rlist.add(v);
		rlist.add(m);
		return rlist;
	}

	@Override
	public int deleteById(int cust_id) {

		String sql = "delete from customer where Customer_Id=?";
		return jdbcTemplate.update(sql, new Object[] { cust_id });
	}

	@Override
	public User getById(int custId) {
		String sql = "select * from customer where Customer_Id=?";

		return (User) jdbcTemplate.queryForObject(sql, new Object[] { custId }, new UserRowMapper());
	}

	@Override
	public int updateCust(User c) {
		
		String sql = "update customer set first_name=?,last_name=?,address=?,contact_no=?,email=? where Customer_Id=?";
		return jdbcTemplate.update(sql,
				new Object[] { c.getFname(), c.getLname(), c.getAddress(), c.getMobile(), c.getEmail(), c.getId() });

	}

	@Override
	public int getCustId(String cname) {
		String cid="select * from customer where  username=?";
		
		User c=jdbcTemplate.queryForObject(cid,new Object[] {cname},new UserRowMapper());
		
		return c.getId();
	
	}



	@Override
	public boolean validate(String email, String password) {
		// TODO Auto-generated method stub
		return false;
	}
}
