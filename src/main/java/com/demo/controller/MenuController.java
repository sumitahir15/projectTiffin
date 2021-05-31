package com.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.demo.model.Menu;
import com.demo.model.Vendor;
import com.demo.service.AdminService;
import com.demo.service.MenuService;
import com.demo.service.VendorService;

@Controller
//@RequestMapping("/menu")
public class MenuController {
	@Autowired
	MenuService menuService;
	@Autowired
	AdminService adminservice;
	@Autowired
	VendorService vendorService;

	@GetMapping(path = { "/addMenu" })
	public ModelAndView addMenu(ModelMap model) {
		
		List<Integer> id=vendorService.getVendor();
		model.addAttribute("id", id);
		return new ModelAndView ("addMenu");
	}
	@GetMapping(path = { "vaddMenu" })
	public ModelAndView addMenu(ModelMap model,@RequestParam("vname") String vname) {
		int vid=vendorService.getVendorId(vname);
		List<Integer> id=vendorService.getVendor();
		model.addAttribute("id", id);
		return new ModelAndView ("/addMenu","vid",vid);
	}

	@PostMapping(path = "/saveMenu")
	public ModelAndView saveMenu(@ModelAttribute("menu") Menu m) {
		//System.out.println(m.getVendorid());
		boolean ans = menuService.save(m);
		if (ans) {
			return new ModelAndView("redirect:viewMenu");
		} else {
			return new ModelAndView("redirect:addMenu");
		}
	}

	

	@GetMapping({"/viewMenu"})
	public ModelAndView displayAllMenu() {
		List<Menu> mlist = menuService.getAllMenu();
		return new ModelAndView("viewMenu", "mlist", mlist);
		
	}
	@GetMapping("/menu")
	public ModelAndView displayMenu() {
		List<Menu> mlist = menuService.getAllMenu();
		return new ModelAndView("menu", "mlist", mlist);
	}
	@RequestMapping("/editMenu")
	public ModelAndView editMenu(@RequestParam int menuId) {
		Menu m = menuService.getMenuById(menuId);
		
		
		return new ModelAndView("editMenu", "menu", m);

	}



	@RequestMapping("/updateMenu")
		public ModelAndView updateMenu(@ModelAttribute("menu")Menu m) {
		menuService.updateMenuById(m);
		return new ModelAndView("redirect:viewMenu");
	}

	@GetMapping("/deleteMenu/{menuId}")
	public ModelAndView deleteMenu(@PathVariable int menuId) {
		menuService.deleteMenuById(menuId);
		return new ModelAndView("redirect:viewMenu");
	}
	@RequestMapping("/menuDetails")
	public ModelAndView menuDetails(ModelMap model,@RequestParam int menuId) {
		Menu m = menuService.getMenuById(menuId);
		Vendor v=vendorService.getVendorById(m.getVendorid());
		model.addAttribute("vName",v.getName());
		
		return new ModelAndView("menuDetails", "menu", m);

	}
	
}
