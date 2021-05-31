
  
  package com.demo.controller;
  
  import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import
  org.springframework.stereotype.Controller;
import
  org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import
  org.springframework.web.servlet.ModelAndView;

import com.demo.model.Orders;
import com.demo.service.AdminService;
import
  com.demo.service.MenuService;
import com.demo.service.OrderService;
  
  @Controller public class OrderController {
  
  @Autowired MenuService menuService;
  
  @Autowired AdminService adminservice;
  
  @Autowired OrderService orderService;
  
  @GetMapping(path = { "viewOrders" }) public ModelAndView viewOrders() { //
  List<Orders> olist=orderService.getAllOrders();
  
  return new ModelAndView("viewOrder","olist",olist );
  
  
  }
  @GetMapping("/deleteOrder/{orderId}")
	public ModelAndView deleteOrder(@PathVariable int orderId) {
		orderService.deleteOrderById(orderId);
		return new ModelAndView("redirect:viewOrder");
	}
  
  }
  
  
	