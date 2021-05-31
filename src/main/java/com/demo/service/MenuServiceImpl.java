package com.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.MenuDao;
import com.demo.model.Menu;
@Service
public class MenuServiceImpl implements MenuService{
	@Autowired
	MenuDao menuDao;
	
	@Override
	public boolean save(Menu m) {
		
		return menuDao.save(m);
		
	}
	@Override
	public List<Menu> getAllMenu() {
		
		return menuDao.getAll();
	}
	@Override
	public Menu getMenuById(int menu_id) {
		// TODO Auto-generated method stub
		return menuDao.getById(menu_id);
	}
	@Override
	public int updateMenuById(Menu m) {
		// TODO Auto-generated method stub
		return menuDao.updateById(m);
	}
	@Override
	public int deleteMenuById(int menu_id) {
		// TODO Auto-generated method stub
		return menuDao.deleteById(menu_id);
	}
	@Override
	public List<Menu> getAllMenuByVendor(String vName) {
		// TODO Auto-generated method stub
		return menuDao.getMenu(vName);
	}

}
