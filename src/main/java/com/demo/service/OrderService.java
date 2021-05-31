package com.demo.service;

import java.util.List;

import com.demo.model.Orders;

public   interface OrderService {

	int saveOrder(int ordId, Object custId, double amt, Object menuId, int qty);
	int savePayment(String TXNID,String ORDERID,String TXNAMOUNT,String STATUS);

	List<Orders> getAllOrders();
	int deleteOrderById(int orderId);
}
