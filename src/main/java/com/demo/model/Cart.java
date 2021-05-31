package com.demo.model;


import java.io.Serializable;
import java.util.List;

public class Cart implements Serializable{

	
	
	
	private static final long serialVersionUID = 3L;
	

	private long cartId;
	
	
	
	private List<Item> cartItems;
	
	
	
	private User  user;
	
	private double grandTotal;
	public long getCartId() {
		return cartId;
	}



	public void setCartId(long cartId) {
		this.cartId = cartId;
	}



	public List<Item> getCartItems() {
		return cartItems;
	}



	public void setCartItems(List<Item> cartItems) {
		this.cartItems = cartItems;
	}






	public User getUser() {
		return user;
	}



	public void setUser(User user) {
		this.user = user;
	}



	public double getGrandTotal() {
		return grandTotal;
	}



	public void setGrandTotal(double grandTotal) {
		this.grandTotal = grandTotal;
	}



	@Override
	public String toString() {
		return "Cart [cartId=" + cartId + ", cartItems=" + cartItems + ", customer=" + user + ", grandTotal="
				+ grandTotal + "]";
	}



	



	
	
	
}
