package com.mrc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class HomeController {
	@GetMapping("/")
	public ModelAndView index() {
		return new ModelAndView("index");
	}
	@GetMapping("/login")
	public ModelAndView login() {
		return new ModelAndView("login");
	}
	@GetMapping("/signup")
	public ModelAndView signup() {
		return new ModelAndView("signup");
	}
	@GetMapping("/recharge")
	public ModelAndView recharge() {
		return new ModelAndView("recharge");
	}
	@GetMapping("/report")
	public ModelAndView report() {
		return new ModelAndView("report");
	}
	@GetMapping("/transaction")
	public ModelAndView transaction() {
		return new ModelAndView("transaction");
	}
	@GetMapping("/user")
	public ModelAndView user() {
		return new ModelAndView("user");
	}
	@GetMapping("/wallet")
	public ModelAndView wallet() {
		return new ModelAndView("wallet");
	}

}
