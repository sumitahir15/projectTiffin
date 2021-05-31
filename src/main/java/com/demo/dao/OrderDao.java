package com.demo.dao;

import java.util.List;

import com.demo.model.Orders;

public interface OrderDao {

	int saveOrder(int ordId, Object custId, double amt, Object menuId, int qty);

	int savePayment(String tXNID, String oRDERID, String tXNAMOUNT, String sTATUS);

	List<Orders> getAllOrders();

	int deleteOrder(int orderId);

}
