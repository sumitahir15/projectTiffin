package com.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.demo.model.Menu;
import com.demo.model.User;
import com.demo.model.Vendor;
import com.demo.service.MenuService;
import com.demo.service.VendorService;

@Controller

public class VendorController {
	@Autowired
	VendorService vendorService;

	@Autowired
	MenuService menuService;
	
	@GetMapping(path = { "/vendorLogin" })
	public String vendorLogin() {
		return "vendorLogin";
	}

	@GetMapping(path = { "/vendorReg" })
	public String regVendor() {
		return "vendorReg";
	}

	@GetMapping(path = { "/addVendor" })
	public String addVendor() {
		return "addVendor";
	}
	
	@GetMapping({"/viewMenuVendor"})
	public ModelAndView displayAllMenuVendor(@RequestParam("vname") String vName) {
		List<Menu> mlist = menuService.getAllMenuByVendor(vName);
		return new ModelAndView("viewMenuVendor", "mlist", mlist);
	}
	
	@RequestMapping(path = "/saveVendor", method = RequestMethod.POST)
	public ModelAndView saveVendor(@ModelAttribute("v") Vendor v) {
		vendorService.save(v);
		return new ModelAndView("home");
	}

	@GetMapping({ "/viewVendor" })
	public ModelAndView displayAllVendor() {
		List<Vendor> vlist = vendorService.getAllVendor();
		return new ModelAndView("viewVendor", "vlist", vlist);
	}

	@GetMapping("/deleteVendor/{vId}")
	public ModelAndView deleteMenu(@PathVariable int vId) {
		vendorService.deleteVendorById(vId);
		return new ModelAndView("redirect:/viewVendor");
	}

	@RequestMapping("/editVendor")
	public ModelAndView editVendor(@RequestParam int vId) {
		Vendor v = vendorService.getVendorById(vId);

		return new ModelAndView("editVendor", "vendor", v);

	}

	@RequestMapping("/updateVendor")
	public ModelAndView updateMenu(@ModelAttribute("Vendor") Vendor v) {
		vendorService.updateVendorById(v);
		return new ModelAndView("redirect:/viewVendor");
	}

	@GetMapping("/enableVendor/{vId}")
	public ModelAndView enableVendor(@PathVariable int vId) {
		vendorService.enableVendorById(vId);
		return new ModelAndView("redirect:/viewVendor");
	}

	@GetMapping("/disableVendor/{vId}")
	public ModelAndView disableVendor(@PathVariable int vId) {
		vendorService.disableVendorById(vId);
		return new ModelAndView("redirect:/viewVendor");
	}
}
