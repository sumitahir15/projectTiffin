package com.demo.model;

import java.io.Serializable;



public class Item {
private Menu menu;
	
	private int quantity;
	
	
	
	
	public Menu getMenu() {
		return menu;
	}

	public void setMenu(Menu menu) {
		this.menu = menu;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public Item() {
		super();
	}

	public Item(Menu menu, int quantity) {
		super();
		this.menu = menu;
		this.quantity = quantity;
	}

	@Override
	public String toString() {
		return "Item [menu=" + menu + ", quantity=" + quantity + "]";
	}

	
	
	
	
	
	
	
	
}
