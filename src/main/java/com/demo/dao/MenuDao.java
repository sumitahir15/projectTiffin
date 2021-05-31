package com.demo.dao;

import java.util.List;

import com.demo.model.Menu;

public interface MenuDao {

	List<Menu> getAll();

	Menu getById(int menu_id);

	int updateById(Menu m);

	int deleteById(int menu_id);

	boolean save(Menu m);

	List<Menu> getMenu(String vName);

}
