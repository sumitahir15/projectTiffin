package com.demo.model;



public class Menu {
	
	private int menuId;
	private String name;
	private double price;
	private String img;
	private String ingredients;
	private int vendorid;
	
	public Menu() {
		super();
	}

	public Menu(int menu_id, String name, double price, String img, String ingredients,int vendorid) {
		super();
		this.menuId =menu_id;
		this.name =name;
		this.price =price;
		this.img =img;
		this.ingredients = ingredients;
		this.vendorid=vendorid;
	}

	
	public int getVendorid() {
		return vendorid;
	}

	public void setVendorid(int vendorid) {
		this.vendorid = vendorid;
	}

	public int getMenuId() {
		return menuId;
	}

	public void setMenuId(int menuId) {
		this.menuId = menuId;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getIngredients() {
		return ingredients;
	}
	public void setIngredients(String ingredients) {
		this.ingredients = ingredients;
	}

	@Override
	public String toString() {
		return "Menu [menuId=" + menuId + ", name=" + name + ", price=" + price + ", img=" + img + ", ingredients="
				+ ingredients + ", vendorid=" + vendorid + "]";
	}

		
	
	
}
