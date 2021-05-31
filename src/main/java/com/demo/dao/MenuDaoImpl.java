package com.demo.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.demo.model.Menu;
import com.demo.model.Vendor;
import com.demo.service.VendorService;
@Repository
public class MenuDaoImpl implements MenuDao {
	@Autowired
	VendorService vendorService;

	@Autowired
	private JdbcTemplate jdbcTemplate;
	private class MenuRowMapper implements RowMapper<Menu> {

		public Menu mapRow(ResultSet rs, int rowNum) throws SQLException {
			Menu m = new Menu();
			m.setMenuId(rs.getInt("menu_id"));
			m.setName(rs.getString("name"));
			m.setPrice(rs.getDouble("price"));
			m.setImg(rs.getString("image"));
			m.setIngredients(rs.getString("ingredients"));
			m.setVendorid(rs.getInt("vendor_id"));
			return m;
		}

	}
	@Override
	public boolean save(Menu m) {
		String sql = "insert into menu values(?,?,?,?,?,?)";
		int x=jdbcTemplate.update(sql, new Object[] {m.getMenuId(),m.getName(),m.getPrice(),m.getImg(),m.getIngredients(),m.getVendorid() });
		if(x>0) {
			return true;
		}
		else {
		return false;
	}
		}

	@Override
	public List<Menu> getAll() {
		String sql="select * from menu";
		List<Menu> mlist=jdbcTemplate.query(sql,new MenuRowMapper());
		Date d=new Date();
	//	jdbcTemplate.update("insert into orders values(?,?,?,?,?)",new Object[] {103,10001,d,200,"approved"});
	return mlist;
	}

	@Override
	public Menu getById(int menu_id) {
		String sql="select * from menu where menu_id=?";
	
		return (Menu)jdbcTemplate.queryForObject(sql,new Object[] {menu_id},new MenuRowMapper());
		
	}

	@Override
	public int updateById(Menu m) {
		String sql="update menu set name=?,price=?,image=?,ingredients=? where menu_id=?";
		return jdbcTemplate.update(sql,new Object[] {m.getName(),m.getPrice(),m.getImg(),m.getIngredients(),m.getMenuId()});

	}

	@Override
	public int deleteById(int menu_id) {
		String sql="delete from menu where menu_id=?";
		return jdbcTemplate.update(sql,new Object[] {menu_id});
	}

	@Override
	public List<Menu> getMenu(String vName) {
	int vid=vendorService.getVendorId(vName);
	
	String sql="select * from menu where  vendor_id=?";
	List<Menu> mlist=jdbcTemplate.query(sql,new Object[] {vid},new MenuRowMapper());

		return mlist;
	}
}
