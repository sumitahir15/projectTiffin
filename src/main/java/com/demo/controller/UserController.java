package com.demo.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.demo.model.Menu;
import com.demo.model.User;
import com.demo.service.MenuService;
import com.demo.service.UserService;

@Controller
public class UserController {

	@Autowired
	UserService userservice;
	
	@Autowired
	MenuService menuService;
	
	@GetMapping(path={"/","/home"})
	public ModelAndView home(ModelMap model, HttpSession session) {
	List<Integer> rlist=new ArrayList<Integer>();
	rlist=(userservice.getRow());
	
	List<Menu> mlist = menuService.getAllMenu();
	model.addAttribute( "mlist", mlist);
	return new ModelAndView("dash","rlist",rlist);
	}
	

	
	@GetMapping(path= {"/viewCust"})
	public ModelAndView getUser() {
		List<User> clist=userservice.getAllEmp();
		
		return new ModelAndView("viewCust","clist",clist);
	}
	
	@GetMapping(path = { "login" })
	public String login() {
		return "login";
	}
	@GetMapping(path = { "addCust" })
	public String addMEnu() {
		return "addCust";
	}
	  @RequestMapping("/editCust")
		public ModelAndView editMenu(@RequestParam int custId) {
			User c =userservice.getCustById(custId);
			
			
			return new ModelAndView("editCust", "cust", c);

		}


		@RequestMapping("/updateCust")
			public ModelAndView updateMenu(@ModelAttribute("user")User c) {
			userservice.updateCustById(c);
			return new ModelAndView("redirect:/viewCust");
		}
	
	@GetMapping(path={"/userReg"})
	public String userRegister() {
	
		return "userReg";
	}
	@GetMapping("/deleteCust/{custId}")
	public ModelAndView deleteMenu(@PathVariable int custId) {
		userservice.deleteCustById(custId);
		return new ModelAndView("redirect:/viewCust");
	}
	
	@RequestMapping(path="/saveUser",method=RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("u") User u){
		userservice.save(u);
		return new ModelAndView("redirect:/home");
	}
	@PostMapping("/validate")
	public ModelAndView validate(@RequestParam String email,@RequestParam String password){
		boolean ans =userservice.validate(email,password);
		if(ans) {
		return new ModelAndView("redirect:/welcome");
		}
		else {
			return new ModelAndView("redirect:/login");
		}
		
	}
}
