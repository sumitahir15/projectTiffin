package com.demo.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.demo.model.Item;
import com.demo.service.AdminService;
import com.demo.service.MenuService;
import com.demo.service.OrderService;
import com.demo.service.UserService;

@Controller
//@RequestMapping(value = "cart")
public class CartController {
	@Autowired
	UserService userService;

	@Autowired
	MenuService menuService;
	
	@Autowired
	AdminService adminservice;
	
	@Autowired
	OrderService orderService;
	
	@RequestMapping(value = "cartview", method = RequestMethod.GET)
	public String index() {
		return "cartview";
	}

	/*
	 * @RequestMapping(value = "txnTest") public String tm() {
	 * 
	 * return "TxnTest"; }
	 */
	@RequestMapping("/txnTest")
	public ModelAndView txn(ModelMap model, @RequestParam String cname,HttpSession session ) {
		int custid=userService.getCustID(cname);
		Object amt= session.getAttribute("amt");
		model.addAttribute("amt", amt);
		String cust=String.valueOf(custid);
		session.setAttribute("custid", cust);
		model.addAttribute("custid");
		Object menuId=session.getAttribute("menuId");
		Object qty=session.getAttribute("qty");
	

		
		return new ModelAndView("TxnTest");

	}

	@RequestMapping(value = "/pgRedirect")
	public String paytm(ModelMap model,HttpSession session) {
		int ordId=(Integer) session.getAttribute("ordId");
	double amt=(Double) session.getAttribute("amt");
	Object custId= session.getAttribute("custid");
	Object menuId= session.getAttribute("menuId");
	int qty=(Integer) session.getAttribute("qty");
		orderService.saveOrder(ordId,custId,amt,menuId,qty);
		return "pgRedirect";
	}

	@RequestMapping(value = "/pgResponse")
	public String confirm(HttpSession session) {

		return "pgResponse";
	}

	@RequestMapping(value = "buy", method = RequestMethod.GET)
	public String buy(@RequestParam int menuId, HttpSession session) {

		if (session.getAttribute("cart") == null) {
			List<Item> cart = new ArrayList<Item>();
			cart.add(new Item(menuService.getMenuById(menuId), 1));
			session.setAttribute("cart", cart);
		} else {
			List<Item> cart = (List<Item>) session.getAttribute("cart");
			int index = this.exists(menuId, cart);
			if (index == -1) {
				cart.add(new Item(menuService.getMenuById(menuId), 1));
			} else {
				int quantity = cart.get(index).getQuantity() + 1;
				cart.get(index).setQuantity(quantity);
			
			}
			session.setAttribute("cart", cart);
		}

		return "redirect:/cartview";
	}

	@RequestMapping(value = "/placeOrder", method = RequestMethod.GET)
	public String place(HttpSession session) {

		List<Item> cart = (List<Item>) session.getAttribute("cart");
		// int index = this.exists(menuId, cart);
		// cart.remove(index);
		for(Item c:cart) {
			System.out.println(c);
		}
		System.out.println(cart.get(0));
		System.out.println(session.getAttribute("amt"));
		
		return "redirect:/cartview";
	}

	@RequestMapping(value = "/remove", method = RequestMethod.GET)
	public String remove(@RequestParam int menuId, HttpSession session) {

		List<Item> cart = (List<Item>) session.getAttribute("cart");
		int index = this.exists(menuId, cart);

		cart.remove(index);
		session.setAttribute("cart", cart);
		return "redirect:/cartview";
	}

	private int exists(int id, List<Item> cart) {
		for (int i = 0; i < cart.size(); i++) {
			if ((cart.get(i).getMenu().getMenuId()) == (id)) {
				return i;
			}
		}
		return -1;
	}

}
