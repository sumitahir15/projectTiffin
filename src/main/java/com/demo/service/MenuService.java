package com.demo.service;

import java.util.List;

import com.demo.model.Menu;

public interface MenuService {

	List<Menu> getAllMenu();

	Menu getMenuById(int menu_id);

	int updateMenuById(Menu m);

	int deleteMenuById(int menu_id);

	boolean save(Menu m);

	List<Menu> getAllMenuByVendor(String vName);

	

}
