package com.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.OrderDao;
import com.demo.model.Orders;
@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	OrderDao orderDao;
	


	@Override
	public int saveOrder(int ordId, Object custId, double amt, Object menuId, int qty) {
		// TODO Auto-generated method stub
		return orderDao.saveOrder(ordId,custId,amt,menuId,qty);
	}



	@Override
	public int savePayment(String TXNID, String ORDERID, String TXNAMOUNT, String STATUS) {
		// TODO Auto-generated method stub
		return orderDao.savePayment(TXNID, ORDERID,TXNAMOUNT,STATUS);
	}



	@Override
	public List<Orders> getAllOrders() {
		// TODO Auto-generated method stub
		return orderDao.getAllOrders();
	}



	@Override
	public int deleteOrderById(int orderId) {
		return orderDao.deleteOrder(orderId);
		
	}

}
